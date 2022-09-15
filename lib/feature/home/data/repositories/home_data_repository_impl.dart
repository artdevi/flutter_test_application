import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/platform/network_info.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_local_datasource.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_remote_datasource.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/feature/home/domain/repositories/home_data_repository.dart';

class HomeDataRepositoryImpl extends HomeDataRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  final NetworkInfo networkInfo;

  HomeDataRepositoryImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, HomeDataEntity>> getHomeData() async {
    if (await networkInfo.isConnected) {
      try {
        final data = await homeRemoteDataSource.getHomeData();
        homeLocalDataSource.homeDataToStorage(data);
        return Right(data);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final data = await homeLocalDataSource.getHomeDataFromStorage();
        return Right(data);
      } on StorageException {
        return Left(StorageFailure());
      }
    }
  }
}
