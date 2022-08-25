import 'dart:convert';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/details/data/models/details_data_model.dart';
import 'package:http/http.dart' as http;

abstract class DetailsRemoteDataSource {
  Future<DetailsDataModel> getDetailsData();
}

class DetailsRemoteDataSourceImpl implements DetailsRemoteDataSource {
  final http.Client client;

  DetailsRemoteDataSourceImpl({required this.client});

  final url = 'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5';

  @override
  Future<DetailsDataModel> getDetailsData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return DetailsDataModel.fromJson(data);
    } else {
      throw ServerException();
    }
  }
}
