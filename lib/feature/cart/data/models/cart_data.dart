import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_data.freezed.dart';
part 'cart_data.g.dart';

@freezed 
class CartData with _$CartData {
  const factory CartData({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'basket')
    required List<CartItem> cartItems,
    required String delivery,
    required String id,
    required int total,
  }) = _CartData;

  factory CartData.fromJson(Map<String, dynamic> json) => _$CartDataFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required int id, 
    required String images, 
    required int price, 
    required String title,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}