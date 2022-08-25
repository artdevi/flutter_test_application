import 'dart:convert';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/cart/data/models/cart_data_model.dart';
import 'package:http/http.dart' as http;

abstract class CartRemoteDataSource {
  Future<CartDataModel> getCartData();
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final http.Client client;

  CartRemoteDataSourceImpl({required this.client});

  final url = 'https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149';

  @override
  Future<CartDataModel> getCartData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return CartDataModel.fromJson(data);
    } else {
      throw ServerException();
    }
  }
}
