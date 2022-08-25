// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsDataModel _$DetailsDataModelFromJson(Map<String, dynamic> json) =>
    DetailsDataModel(
      id: json['id'] as String,
      camera: json['camera'] as String,
      cpu: json['CPU'] as String,
      capacity:
          (json['capacity'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isFavorites: json['isFavorites'] as bool,
      price: json['price'] as int,
      rating: (json['rating'] as num).toDouble(),
      sd: json['sd'] as String,
      ssd: json['ssd'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$DetailsDataModelToJson(DetailsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'CPU': instance.cpu,
      'camera': instance.camera,
      'capacity': instance.capacity,
      'color': instance.color,
      'images': instance.images,
      'isFavorites': instance.isFavorites,
      'price': instance.price,
      'rating': instance.rating,
      'sd': instance.sd,
      'ssd': instance.ssd,
      'title': instance.title,
    };
