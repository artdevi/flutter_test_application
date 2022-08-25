// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotSaleModel _$HotSaleModelFromJson(Map<String, dynamic> json) => HotSaleModel(
      id: json['id'] as int,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      pictureURL: json['picture'] as String,
      isBuy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$HotSaleModelToJson(HotSaleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.pictureURL,
      'is_buy': instance.isBuy,
    };
