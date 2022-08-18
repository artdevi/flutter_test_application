import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_data.freezed.dart';
part 'details_data.g.dart';

@freezed 
class DetailsData with _$DetailsData {
  const factory DetailsData({
    required String id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'CPU')
    required String cpu,
    required String camera,
    required List<String> capacity,
    required List<String> color,
    required List<String> images,
    required bool isFavorites,
    required int price,
    required double rating,
    required String sd,
    required String ssd,
    required String title,
  }) = _DetailsData;

  factory DetailsData.fromJson(Map<String, dynamic> json) => _$DetailsDataFromJson(json);
}