import 'dart:convert';

import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/cart/data/models/cart_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CartLocalDataSource {
  Future<CartDataModel> getCartDataFromStorage();
  Future<void> cartDataToStorage(CartDataModel data);
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final SharedPreferences sharedPreferences;

  CartLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<CartDataModel> getCartDataFromStorage() {
    final jsonCartData = sharedPreferences.getString('CACHED_CART_DATA');

    if (jsonCartData != null && jsonCartData.isNotEmpty) {
      return Future.value(CartDataModel.fromJson(json.decode(jsonCartData)));
    } else {
      throw StorageException();
    }
  }

  @override
  Future<void> cartDataToStorage(CartDataModel data) {
    final String jsonCartData = json.encode(data.toJson());

    sharedPreferences.setString('CACHED_CART_DATA', jsonCartData);

    return Future.value();
  }
}
