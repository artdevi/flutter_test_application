import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/api/api_client.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';

abstract class HomeRemoteDataSource {
  Future<HomeDataModel> getHomeData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiClient client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<HomeDataModel> getHomeData() async {
    try {
      return await client.getHomeData();
    } catch (e) {
      throw ServerException();
    }
  }
}
