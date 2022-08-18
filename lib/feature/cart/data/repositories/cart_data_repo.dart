import 'dart:convert';
import 'package:flutter_application_1/feature/cart/data/models/cart_data.dart';
import 'package:http/http.dart' as http;

class CartDataRepo {
  final url = 'https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149';

  Future<CartData> getData() async {
    try {
      var response = await http.get(Uri.parse(url));

      var jsonResult = json.decode(response.body);
      return CartData.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}