import 'dart:convert';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:http/http.dart' as http;

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl({required this.client});

  final url = 'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175';

  @override
  Future<HomeDataModel> getHomeData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return HomeDataModel.fromJson(data);
    } else {
      throw ServerException();
    }
  }
}
