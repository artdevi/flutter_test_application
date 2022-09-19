import 'package:floor/floor.dart';
import 'package:flutter_application_1/feature/home/data/models/best_seller_model.dart';
import 'package:flutter_application_1/feature/home/data/models/hot_sale_model.dart';

@dao
abstract class BestSellerDao {
  @Query('SELECT * FROM BestSellerModel')
  Future<List<BestSellerModel>> getBestSellers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBestSeller(BestSellerModel bestSeller);

  @Query("DELETE FROM BestSellerModel")
  Future<void> deleteBestSellers();
}

@dao
abstract class HotSaleDao {
  @Query('SELECT * FROM HotSaleModel')
  Future<List<HotSaleModel>> getHotSales();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHotSale(HotSaleModel bestSeller);

  @Query("DELETE FROM HotSaleModel")
  Future<void> deleteHotSale();
}
