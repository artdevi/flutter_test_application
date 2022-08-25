import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/platform/network_info.dart';
import 'package:flutter_application_1/feature/details/data/datasources/details_local_datasource.dart';
import 'package:flutter_application_1/feature/details/data/datasources/details_remote_datasource.dart';
import 'package:flutter_application_1/feature/details/domain/entities/details_data_entity.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/feature/details/domain/repositories/details_data_repository.dart';

class DetailsDataRepositoryImpl extends DetailsDataRepository {
  final DetailsRemoteDataSource detailsRemoteDataSource;
  final DetailsLocalDataSource detailsLocalDataSource;
  final NetworkInfo networkInfo;

  DetailsDataRepositoryImpl({
    required this.detailsRemoteDataSource,
    required this.detailsLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, DetailsDataEntity>> getDetailsData() async {
    if (await networkInfo.isConnected) {
      try {
        final data = await detailsRemoteDataSource.getDetailsData();
        detailsLocalDataSource.detailsDataToCache(data);
        return Right(data);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final data = await detailsLocalDataSource.getDetailsDataFromCache();
        return Right(data);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
