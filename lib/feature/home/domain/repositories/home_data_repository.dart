import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';

abstract class HomeDataRepository {
  Future<Either<Failure, HomeDataEntity>> getHomeData();
}
