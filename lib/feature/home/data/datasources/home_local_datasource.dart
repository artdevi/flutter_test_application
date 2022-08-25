import 'dart:convert';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeLocalDataSource {
  Future<HomeDataModel> getHomeDataFromCache();
  Future<void> homeDataToCache(HomeDataModel data);
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final SharedPreferences sharedPreferences;

  HomeLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<HomeDataModel> getHomeDataFromCache() {
    final jsonHomeData = sharedPreferences.getString('CACHED_HOME_DATA');

    if (jsonHomeData != null && jsonHomeData.isNotEmpty) {
      return Future.value(HomeDataModel.fromJson(json.decode(jsonHomeData)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> homeDataToCache(HomeDataModel data) {
    final String jsonHomeData = json.encode(data.toJson());

    sharedPreferences.setString('CACHED_HOME_DATA', jsonHomeData);

    return Future.value();
  }
}
