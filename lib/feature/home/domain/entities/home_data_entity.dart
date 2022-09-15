import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

class HomeDataEntity {
  @JsonKey(name: 'home_store')
  final List<HotSaleEntity> hotSales;
  @JsonKey(name: 'best_seller')
  final List<BestSellerEntity> bestSellers;

  HomeDataEntity({
    required this.hotSales,
    required this.bestSellers,
  });
}

@entity
@JsonSerializable()
class HotSaleEntity {
  @primaryKey
  final int id;
  @JsonKey(name: 'is_new')
  final bool? isNew;
  final String title;
  final String subtitle;
  @JsonKey(name: 'picture')
  final String pictureURL;
  @JsonKey(name: 'is_buy')
  final bool isBuy;

  HotSaleEntity({
    required this.id,
    required this.isNew,
    required this.title,
    required this.subtitle,
    required this.pictureURL,
    required this.isBuy,
  });
}

@entity
@JsonSerializable()
class BestSellerEntity {
  @primaryKey
  final int id;
  @JsonKey(name: 'is_favorites')
  final bool isFavorites;
  final String title;
  @JsonKey(name: 'price_without_discount')
  final int priceWithoutDiscount;
  @JsonKey(name: 'discount_price')
  final int discountPrice;
  @JsonKey(name: 'picture')
  final String pictureURL;

  BestSellerEntity({
    required this.id,
    required this.isFavorites,
    required this.title,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.pictureURL,
  });
}
