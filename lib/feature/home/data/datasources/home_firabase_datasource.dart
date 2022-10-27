import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/error/exception.dart';
import 'package:flutter_application_1/feature/home/data/datasources/home_remote_datasource.dart';
import 'package:flutter_application_1/feature/home/data/models/best_seller_model.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data_model.dart';
import 'package:flutter_application_1/feature/home/data/models/hot_sale_model.dart';

class HomeFirestoreDataSource implements HomeRemoteDataSource {
  HomeFirestoreDataSource();

  @override
  Future<HomeDataModel> getHomeData() async {
    List<BestSellerModel> bestSellers = [];
    List<HotSaleModel> hotSales = [];

    try {
      var db = FirebaseFirestore.instance;

      await db.collection('bestSellers').get().then((event) => {
            for (var doc in event.docs)
              bestSellers.add(BestSellerModel.fromJson(doc.data()))
          });

      await db.collection('hotSales').get().then((event) => {
            for (var doc in event.docs)
              hotSales.add(HotSaleModel.fromJson(doc.data()))
          });

      return HomeDataModel(hotSales: hotSales, bestSellers: bestSellers);
    } catch (e) {
      throw ServerException();
    }
  }
}
