import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/common/error_page.dart';
import 'package:flutter_application_1/feature/common/loading_page.dart';
import 'package:flutter_application_1/feature/common/unexpected_state_page.dart';
import 'package:flutter_application_1/feature/home/domain/entities/home_data_entity.dart';
import 'package:flutter_application_1/feature/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_application_1/feature/home/presentation/bloc/home_event.dart';
import 'package:flutter_application_1/feature/home/presentation/bloc/home_state.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/best_seller.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/bottom_bar.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/category_selection.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/filter_options.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/header.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/hot_sales.dart';
import 'package:flutter_application_1/feature/home/presentation/widgets/search.dart';
import 'package:flutter_application_1/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => sl<HomeBloc>()..add(LoadHomeDataEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case HomeDataLoading:
              return const LoadingPage();
            case HomeDataLoaded:
              return _HomePage((state as HomeDataLoaded).data);
            case HomeDataError:
              return const ErrorPage();
            default:
              return const UnexpectedStatePage();
          }
        },
      ),
    );
  }
}

class _HomePage extends StatefulWidget {
  final HomeDataEntity data;

  const _HomePage(this.data, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<_HomePage> createState() => _HomePageState(data);
}

class _HomePageState extends State<_HomePage> {
  var isFilterOptionsOpened = false;

  final HomeDataEntity data;

  _HomePageState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                HomeHeader(onFilterTap: () {
                  setState(() {
                    isFilterOptionsOpened = !isFilterOptionsOpened;
                  });
                }),
                const CategorySelection(),
                const SizedBox(height: 35),
                const Search(),
                const SizedBox(height: 34),
                HotSalesWidget(data: data.hotSales),
                const SizedBox(height: 34),
                BestSellerWidget(data: data.bestSellers),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(),
            ),
            if (isFilterOptionsOpened)
              Align(
                alignment: Alignment.bottomCenter,
                child: FilterOptions(
                  close: () {
                    setState(() {
                      isFilterOptionsOpened = false;
                    });
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
