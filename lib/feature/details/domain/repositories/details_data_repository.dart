import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/feature/details/domain/entities/details_data_entity.dart';

abstract class DetailsDataRepository {
  Future<Either<Failure, DetailsDataEntity>> getDetailsData();
}
