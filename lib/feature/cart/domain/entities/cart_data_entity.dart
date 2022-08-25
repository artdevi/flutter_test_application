import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CartDataEntity extends Equatable {
  @JsonKey(name: 'basket')
  final List<CartItemEntity> cartItems;
  final String delivery;
  final String id;
  final int total;

  const CartDataEntity({
    required this.cartItems,
    required this.delivery,
    required this.id,
    required this.total,
  });

  @override
  List<Object?> get props => [cartItems, delivery, id, total];
}

@JsonSerializable()
class CartItemEntity extends Equatable {
  final int id;
  final String images;
  final int price;
  final String title;

  const CartItemEntity({
    required this.id,
    required this.images,
    required this.price,
    required this.title,
  });

  @override
  List<Object?> get props => [id, images, price, title];
}
