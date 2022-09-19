import 'package:flutter_application_1/core/data/database/database.dart';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_local_datasource.dart';
import 'package:flutter_application_1/feature/home/data/models/best_seller_model.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:flutter_application_1/feature/home/data/models/hot_sale_model.dart';

class HomeLocalDatabase implements HomeLocalDataSource {
  final AppDatabase database;

  HomeLocalDatabase(this.database);

  @override
  Future<HomeDataModel> getHomeDataFromStorage() async {
    final List<BestSellerModel> bestSellers;
    final List<HotSaleModel> hotSales;

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
    for (var bs in data.bestSellers) {
      database.bestSellerDao.insertBestSeller(bs as BestSellerModel);
    }

    for (var hs in data.hotSales) {
      database.hotSaleDao.insertHotSale(hs as HotSaleModel);
    }

    return Future.value();
  }
}
