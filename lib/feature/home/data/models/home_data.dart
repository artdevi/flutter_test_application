// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data.freezed.dart';
part 'home_data.g.dart';

@freezed 
class HomeData with _$HomeData {
  const factory HomeData({
    @JsonKey(name: 'home_store')
    required List<HotSale> hotSales,
    @JsonKey(name: 'best_seller')
    required List<BestSeller> bestSellers,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);
}

@freezed
class HotSale with _$HotSale {
  const factory HotSale({
    required int id, 
    @JsonKey(name: 'is_new', nullable: true)
    required bool? isNew, 
    required String title, 
    required String subtitle, 
    @JsonKey(name: 'picture')
    required String pictureURL, 
    @JsonKey(name: 'is_buy')
    required bool isBuy,
  }) = _HotSale;

  factory HotSale.fromJson(Map<String, dynamic> json) => _$HotSaleFromJson(json);
}

@freezed
class BestSeller with _$BestSeller {
  const factory BestSeller({
    required int id, 
    @JsonKey(name: 'is_favorites')
    required bool isFavorites, 
    required String title, 
    @JsonKey(name: 'price_without_discount')
    required int priceWithoutDiscount, 
    @JsonKey(name: 'discount_price')
    required int discountPrice,
    @JsonKey(name: 'picture') 
    required String pictureURL
  }) = _BestSeller;

  factory BestSeller.fromJson(Map<String, dynamic> json) => _$BestSellerFromJson(json);
}