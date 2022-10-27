import 'package:floor/floor.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_seller_model.g.dart';

@entity
@JsonSerializable()
class BestSellerModel extends BestSellerEntity {
  const BestSellerModel({
    required super.id,
    required super.isFavorites,
    required super.title,
    required super.priceWithoutDiscount,
    required super.discountPrice,
    required super.pictureURL,
  });

  factory BestSellerModel.fromJson(Map<String, dynamic> json) =>
      _$BestSellerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BestSellerModelToJson(this);
}
