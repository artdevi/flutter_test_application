import 'package:floor/floor.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_sale_model.g.dart';

@entity
@JsonSerializable()
class HotSaleModel extends HotSaleEntity {
  HotSaleModel({
    required super.id,
    required super.isNew,
    required super.title,
    required super.subtitle,
    required super.pictureURL,
    required super.isBuy,
  });

  factory HotSaleModel.fromJson(Map<String, dynamic> json) =>
      _$HotSaleModelFromJson(json);

  Map<String, dynamic> toJson() => _$HotSaleModelToJson(this);
}
