import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';

abstract class CartDataRepository {
  Future<Either<Failure, CartDataEntity>> getCartData();
}
