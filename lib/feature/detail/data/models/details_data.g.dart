// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsData _$$_DetailsDataFromJson(Map<String, dynamic> json) =>
    _$_DetailsData(
      id: json['id'] as String,
      cpu: json['CPU'] as String,
      camera: json['camera'] as String,
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

Map<String, dynamic> _$$_DetailsDataToJson(_$_DetailsData instance) =>
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
