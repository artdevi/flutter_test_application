part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.loading() = CartStateLoading;
  const factory CartState.loaded({ required CartData cartDataLoaded}) = CartStateLoaded;
  const factory CartState.error() = CartStateError;
}