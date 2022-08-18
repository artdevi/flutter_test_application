import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/home/bloc/home_bloc.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/best_seller.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/bottom_bar.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/filter_options.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/header.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/hot_sales.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'category_selection.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var isFilterOptionsOpened = false;

  @override
  void initState() {
    context
      .read<HomeBloc>()
      .add(const HomeEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;

    return state.when(
      loading: () {
        return const Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: CircularProgressIndicator(color: AppColors.primaryOrange),
          ),
        );
      }, 
      loaded: (data) {
        return SafeArea(
          child: Stack(
            children: [
              ListView(
                children: [
                  HomeHeader(
                    onFilterTap: () {
                      setState(() {
                        isFilterOptionsOpened = !isFilterOptionsOpened;
                      });
                    }
                  ),
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
              if (isFilterOptionsOpened) Align(
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
        );
      }, 
      error: () => const Center(
        child: Text(
          'Something went wrong :(',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryBlue,
          ),
        ),
      ),
    );
  }
}