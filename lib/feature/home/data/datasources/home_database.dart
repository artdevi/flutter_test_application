import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:flutter_application_1/feature/home/data/datasources/home_dao.dart';

import '../../../home/domain/entities/home_data_entity.dart';

part 'home_database.g.dart';

@Database(version: 1, entities: [BestSellerEntity, HotSaleEntity])
abstract class HomeDatabase extends FloorDatabase {
  BestSellerDao get bestSellerDao;
  HotSaleDao get hotSaleDao;
}
