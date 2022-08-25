import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class DetailsDataEntity extends Equatable {
  final String id;
  @JsonKey(name: 'CPU')
  final String cpu;
  final String camera;
  final List<String> capacity;
  final List<String> color;
  final List<String> images;
  final bool isFavorites;
  final int price;
  final double rating;
  final String sd;
  final String ssd;
  final String title;

  const DetailsDataEntity({
    required this.id,
    required this.camera,
    required this.cpu,
    required this.capacity,
    required this.color,
    required this.images,
    required this.isFavorites,
    required this.price,
    required this.rating,
    required this.sd,
    required this.ssd,
    required this.title,
  });

  @override
  List<Object?> get props => throw [
        id,
        camera,
        capacity,
        color,
        images,
        isFavorites,
        price,
        rating,
        sd,
        ssd,
        title,
      ];
}
