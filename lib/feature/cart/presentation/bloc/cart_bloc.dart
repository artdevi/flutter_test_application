import 'package:flutter_application_1/feature/cart/domain/usecases/get_cart_data.dart';
import 'package:flutter_application_1/feature/cart/presentation/bloc/cart_event.dart';
import 'package:flutter_application_1/feature/cart/presentation/bloc/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartData getData;

  CartBloc(this.getData) : super(CartDataEmpty()) {
    on<LoadCartDataEvent>((event, emit) async {
      emit(CartDataLoading());
      final failureOrData = await getData();
      failureOrData.fold((failure) => emit(CartDataError(message: '')),
          (data) => emit(CartDataLoaded(data: data)));
    });
  }
}
