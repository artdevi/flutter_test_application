import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/feature/details/domain/entities/details_data_entity.dart';
import 'package:flutter_application_1/feature/details/domain/repositories/details_data_repository.dart';

class GetDetailsData extends UseCase {
  final DetailsDataRepository detailsDataRepository;

  GetDetailsData(this.detailsDataRepository);

  @override
  Future<Either<Failure, DetailsDataEntity>> call() async {
    return await detailsDataRepository.getDetailsData();
  }
}
