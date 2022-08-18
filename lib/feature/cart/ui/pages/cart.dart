import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/cart/data/bloc/cart_bloc.dart';
import 'package:flutter_application_1/feature/cart/data/repositories/cart_data_repo.dart';
import 'package:flutter_application_1/feature/cart/ui/widgets/cart_container.dart';
import 'package:flutter_application_1/feature/cart/ui/widgets/header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final repository = CartDataRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CartBloc(cartDataRepo: repository),
        child: SafeArea(
          child: Column(
            children: [
              const CartHeader(),
              Container(
                padding: const EdgeInsets.only(top: 30, bottom: 49, left: 42, right: 42),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Expanded(
                child: CartContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}