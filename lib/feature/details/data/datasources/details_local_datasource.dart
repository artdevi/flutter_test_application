import 'dart:convert';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/details/data/models/details_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DetailsLocalDataSource {
  Future<DetailsDataModel> getDetailsDataFromStorage();
  Future<void> detailsDataToStorage(DetailsDataModel data);
}

class DetailsLocalDataSourceImpl implements DetailsLocalDataSource {
  final SharedPreferences sharedPreferences;

  DetailsLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<DetailsDataModel> getDetailsDataFromStorage() {
    final jsonDetailsData = sharedPreferences.getString('CACHED_DETAILS_DATA');

    if (jsonDetailsData != null && jsonDetailsData.isNotEmpty) {
      return Future.value(
          DetailsDataModel.fromJson(json.decode(jsonDetailsData)));
    } else {
      throw StorageException();
    }
  }

  @override
  Future<void> detailsDataToStorage(DetailsDataModel data) {
    final String jsonDetailsData = json.encode(data.toJson());

    sharedPreferences.setString('CACHED_DETAILS_DATA', jsonDetailsData);

    return Future.value();
  }
}
