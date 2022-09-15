import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/core/api/api_client.dart';
import 'package:flutter_application_1/feature/details/data/models/details_data_model.dart';

abstract class DetailsRemoteDataSource {
  Future<DetailsDataModel> getDetailsData();
}

class DetailsRemoteDataSourceImpl implements DetailsRemoteDataSource {
  final ApiClient client;

  DetailsRemoteDataSourceImpl({required this.client});
  @override
  Future<DetailsDataModel> getDetailsData() async {
    try {
      return await client.getDetailsData();
    } catch (e) {
      throw ServerException();
    }
  }
}
