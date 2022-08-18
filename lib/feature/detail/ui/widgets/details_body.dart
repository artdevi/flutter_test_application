import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/detail/data/bloc/details_bloc.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/carousel_slider.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/header.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/info_block.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  void initState() {
    context
      .read<DetailsBloc>()
      .add(const DetailsEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DetailsBloc>().state;

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
          child: Column(
            children: [
              const DetailsHeader(),
              Expanded(
                child: Carousel(images: data.images),
              ),
              ProductInfoBlock(data),
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