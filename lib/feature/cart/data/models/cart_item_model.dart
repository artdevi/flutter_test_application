import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.g.dart';

@JsonSerializable()
class CartItemModel extends CartItemEntity {
  const CartItemModel({
    required super.id,
    required super.images,
    required super.price,
    required super.title,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}
