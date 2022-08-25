import 'package:flutter_application_1/feature/details/domain/entities/details_data_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'details_data_model.g.dart';

@JsonSerializable()
class DetailsDataModel extends DetailsDataEntity {
  const DetailsDataModel({
    required super.id,
    required super.camera,
    required super.cpu,
    required super.capacity,
    required super.color,
    required super.images,
    required super.isFavorites,
    required super.price,
    required super.rating,
    required super.sd,
    required super.ssd,
    required super.title,
  });

  factory DetailsDataModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsDataModelToJson(this);
}
