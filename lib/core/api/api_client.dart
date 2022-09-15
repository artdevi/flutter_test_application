import 'package:dio/dio.dart';
import 'package:flutter_application_1/feature/cart/data/models/cart_data_model.dart';
import 'package:flutter_application_1/feature/details/data/models/details_data_model.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://run.mocky.io/v3/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.home)
  Future<HomeDataModel> getHomeData();

  @GET(Apis.details)
  Future<DetailsDataModel> getDetailsData();

  @GET(Apis.cart)
  Future<CartDataModel> getCartData();
}

class Apis {
  static const String home = '/654bd15e-b121-49ba-a588-960956b15175';
  static const String details = '/6c14c560-15c6-4248-b9d2-b4508df7d4f5';
  static const String cart = '/53539a72-3c5f-4f30-bbb1-6ca10d42c149';
}
