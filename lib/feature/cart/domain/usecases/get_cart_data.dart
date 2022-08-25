import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';
import 'package:flutter_application_1/feature/cart/domain/repositories/cart_data_repository.dart';

class GetCartData extends UseCase {
  final CartDataRepository cartDataRepository;

  GetCartData(this.cartDataRepository);

  @override
  Future<Either<Failure, CartDataEntity>> call() async {
    return await cartDataRepository.getCartData();
  }
}
