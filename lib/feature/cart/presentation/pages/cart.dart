import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/cart/domain/entities/cart_data_entity.dart';
import 'package:flutter_application_1/feature/cart/presentation/bloc/cart_bloc.dart';
import 'package:flutter_application_1/feature/cart/presentation/bloc/cart_event.dart';
import 'package:flutter_application_1/feature/cart/presentation/bloc/cart_state.dart';
import 'package:flutter_application_1/feature/cart/presentation/widgets/cart_container.dart';
import 'package:flutter_application_1/feature/cart/presentation/widgets/header.dart';
import 'package:flutter_application_1/feature/common/error_page.dart';
import 'package:flutter_application_1/feature/common/loading_page.dart';
import 'package:flutter_application_1/feature/common/unexpected_state_page.dart';
import 'package:flutter_application_1/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localications.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => sl<CartBloc>()..add(LoadCartDataEvent()),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case CartDataLoading:
              return const LoadingPage();
            case CartDataLoaded:
              return _CartPage((state as CartDataLoaded).data);
            case CartDataError:
              return const ErrorPage();
            default:
              return const UnexpectedStatePage();
          }
        },
      ),
    );
  }
}

class _CartPage extends StatefulWidget {
  final CartDataEntity data;

  const _CartPage(this.data, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<_CartPage> createState() => _CartPageState(data);
}

class _CartPageState extends State<_CartPage> {
  var isFilterOptionsOpened = false;

  final CartDataEntity data;

  _CartPageState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CartHeader(),
            Container(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 49, left: 42, right: 42),
              alignment: Alignment.centerLeft,
              child: Text(
                AppLocalizations.of(context)!.myCart,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: CartContainer(data),
            ),
          ],
        ),
      ),
    );
  }
}
