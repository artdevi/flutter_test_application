import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_database.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_local_datasource.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';

class HomeLocalDatabase implements HomeLocalDataSource {
  final HomeDatabase database;

  HomeLocalDatabase(this.database);

  @override
  Future<HomeDataModel> getHomeDataFromStorage() async {
    final List<BestSellerEntity> bestSellers;
    final List<HotSaleEntity> hotSales;

    try {
      bestSellers = await database.bestSellerDao.getBestSellers();
      hotSales = await database.hotSaleDao.getHotSales();
      return HomeDataModel(
        bestSellers: List.castFrom(bestSellers),
        hotSales: List.castFrom(hotSales),
      );
    } catch (e) {
      throw StorageException();
    }
  }

  @override
  Future<void> homeDataToStorage(HomeDataModel data) {
    data.bestSellers.forEach(database.bestSellerDao.insertBestSeller);

    data.hotSales.forEach(database.hotSaleDao.insertHotSale);

    return Future.value();
  }
}
