import 'package:flutter_application_1/feature/cart/data/models/cart_data.dart';
import 'package:flutter_application_1/feature/cart/data/repositories/cart_data_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
// part 'cart_bloc.g.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartDataRepo cartDataRepo;
  CartBloc({required this.cartDataRepo}) : super(const CartState.loading()) {
    on<CartEventFetch>((event, emit) async {
      emit(const CartState.loading());
      try {
        CartData cartDataLoaded = await cartDataRepo.getData();
        emit(CartState.loaded(cartDataLoaded: cartDataLoaded));
      } catch (_) {
        emit(const CartState.error());
      }
    });
  }
}