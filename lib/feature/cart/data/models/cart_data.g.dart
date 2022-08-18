// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartData _$$_CartDataFromJson(Map<String, dynamic> json) => _$_CartData(
      cartItems: (json['basket'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] as String,
      id: json['id'] as String,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_CartDataToJson(_$_CartData instance) =>
    <String, dynamic>{
      'basket': instance.cartItems,
      'delivery': instance.delivery,
      'id': instance.id,
      'total': instance.total,
    };

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      id: json['id'] as int,
      images: json['images'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'price': instance.price,
      'title': instance.title,
    };
