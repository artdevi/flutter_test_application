// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeData _$$_HomeDataFromJson(Map<String, dynamic> json) => _$_HomeData(
      hotSales: (json['home_store'] as List<dynamic>)
          .map((e) => HotSale.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSellers: (json['best_seller'] as List<dynamic>)
          .map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeDataToJson(_$_HomeData instance) =>
    <String, dynamic>{
      'home_store': instance.hotSales,
      'best_seller': instance.bestSellers,
    };

_$_HotSale _$$_HotSaleFromJson(Map<String, dynamic> json) => _$_HotSale(
      id: json['id'] as int,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      pictureURL: json['picture'] as String,
      isBuy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$$_HotSaleToJson(_$_HotSale instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.pictureURL,
      'is_buy': instance.isBuy,
    };

_$_BestSeller _$$_BestSellerFromJson(Map<String, dynamic> json) =>
    _$_BestSeller(
      id: json['id'] as int,
      isFavorites: json['is_favorites'] as bool,
      title: json['title'] as String,
      priceWithoutDiscount: json['price_without_discount'] as int,
      discountPrice: json['discount_price'] as int,
      pictureURL: json['picture'] as String,
    );

Map<String, dynamic> _$$_BestSellerToJson(_$_BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.pictureURL,
    };
