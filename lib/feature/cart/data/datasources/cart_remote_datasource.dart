import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/api/api_client.dart';
import 'package:flutter_application_1/feature/cart/data/models/cart_data_model.dart';

abstract class CartRemoteDataSource {
  Future<CartDataModel> getCartData();
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final ApiClient client;

  CartRemoteDataSourceImpl({required this.client});

  @override
  Future<CartDataModel> getCartData() async {
    try {
      return await client.getCartData();
    } catch (e) {
      throw ServerException();
    }
  }
}
