import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/platform/network_info.dart';
import 'package:flutter_application_1/feature/cart/data/datasources/cart_local_datasource.dart';
import 'package:flutter_application_1/feature/cart/data/datasources/cart_remote_datasource.dart';
import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/feature/cart/domain/repositories/cart_data_repository.dart';

class CartDataRepositoryImpl extends CartDataRepository {
  final CartRemoteDataSource cartRemoteDataSource;
  final CartLocalDataSource cartLocalDataSource;
  final NetworkInfo networkInfo;

  CartDataRepositoryImpl({
    required this.cartRemoteDataSource,
    required this.cartLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, CartDataEntity>> getCartData() async {
    if (await networkInfo.isConnected) {
      try {
        final data = await cartRemoteDataSource.getCartData();
        cartLocalDataSource.cartDataToStorage(data);
        return Right(data);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final data = await cartLocalDataSource.getCartDataFromStorage();
        return Right(data);
      } on StorageException {
        return Left(StorageFailure());
      }
    }
  }
}
