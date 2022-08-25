// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) =>
    HomeDataModel(
      hotSales: (json['home_store'] as List<dynamic>)
          .map((e) => HotSaleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSellers: (json['best_seller'] as List<dynamic>)
          .map((e) => BestSellerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataModelToJson(HomeDataModel instance) =>
    <String, dynamic>{
      'home_store': instance.hotSales,
      'best_seller': instance.bestSellers,
    };
