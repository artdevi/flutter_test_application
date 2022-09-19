import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_application_1/feature/home/data/models/best_seller_model.dart';
import 'package:flutter_application_1/feature/home/data/models/hot_sale_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:flutter_application_1/feature/home/data/datasources/home_dao.dart';

part 'database.g.dart';

@Database(version: 1, entities: [BestSellerModel, HotSaleModel])
abstract class AppDatabase extends FloorDatabase {
  BestSellerDao get bestSellerDao;
  HotSaleDao get hotSaleDao;
}
