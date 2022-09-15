import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_database.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_local_datasource.dart';
import 'package:flutter_application_1/feature/home/data/models/best_seller_model.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:flutter_application_1/feature/home/data/models/hot_sale_model.dart';
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
      return Future.value(HomeDataModel(
          bestSellers: bestSellers as List<BestSellerModel>,
          hotSales: hotSales as List<HotSaleModel>));
    } catch (e) {
      throw StorageException();
    }
  }

  @override
  Future<void> homeDataToStorage(HomeDataModel data) {
    data.bestSellers.forEach((element) async {
      database.bestSellerDao.insertBestSeller(element);
    });

    data.hotSales.forEach((element) async {
      database.hotSaleDao.insertHotSale(element);
    });

    return Future.value();
  }
}
