import 'package:flutter_application_1/feature/home/data/models/best_seller_model.dart';
import 'package:flutter_application_1/feature/home/data/models/hot_sale_model.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_data_model.g.dart';

@JsonSerializable()
class HomeDataModel extends HomeDataEntity {
  HomeDataModel({
    required List<HotSaleEntity> hotSales,
    required List<BestSellerEntity> bestSellers,
  }) : super(hotSales: hotSales, bestSellers: bestSellers);

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDataModelToJson(this);
}
