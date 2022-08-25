import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';

class CartState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CartDataEmpty extends CartState {}

class CartDataLoading extends CartState {}

class CartDataLoaded extends CartState {
  final CartDataEntity data;

  CartDataLoaded({required this.data});

  @override
  List<Object?> get props => [data];
}

class CartDataError extends CartState {
  final String message;

  CartDataError({required this.message});

  @override
  List<Object?> get props => [message];
}
