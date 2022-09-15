import 'package:floor/floor.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';

@dao
abstract class BestSellerDao {
  @Query('SELECT * FROM $kBestSellerTableName')
  Future<List<BestSellerEntity>> getBestSellers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBestSeller(BestSellerEntity bestSeller);

  @Query("DELETE FROM $kBestSellerTableName")
  Future<void> deleteBestSellers();
}

@dao
abstract class HotSaleDao {
  @Query('SELECT * FROM $kHotSaleTableName')
  Future<List<HotSaleEntity>> getHotSales();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHotSale(HotSaleEntity bestSeller);

  @Query("DELETE FROM $kHotSaleTableName")
  Future<void> deleteHotSale();
}
