import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';
import 'package:flutter_application_1/feature/home/domain/repositories/home_data_repository.dart';

class GetHomeData extends UseCase {
  final HomeDataRepository homeDataRepository;

  GetHomeData(this.homeDataRepository);

  @override
  Future<Either<Failure, HomeDataEntity>> call() async {
    return await homeDataRepository.getHomeData();
  }
}
