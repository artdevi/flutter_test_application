import 'package:flutter_application_1/feature/cart/data/models/cart_item_model.dart';
import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_data_model.g.dart';

@JsonSerializable()
class CartDataModel extends CartDataEntity {
  const CartDataModel({
    required List<CartItemModel> cartItems,
    required delivery,
    required id,
    required total,
  }) : super(
          cartItems: cartItems,
          delivery: delivery,
          id: id,
          total: total,
        );

  factory CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$CartDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartDataModelToJson(this);
}
