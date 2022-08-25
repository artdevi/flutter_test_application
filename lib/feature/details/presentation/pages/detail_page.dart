import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/common/error_page.dart';
import 'package:flutter_application_1/feature/common/loading_page.dart';
import 'package:flutter_application_1/feature/common/unexpected_state_page.dart';
import 'package:flutter_application_1/feature/details/domain/entities/details_data_entity.dart';
import 'package:flutter_application_1/feature/details/presentation/bloc/details_bloc.dart';
import 'package:flutter_application_1/feature/details/presentation/bloc/details_event.dart';
import 'package:flutter_application_1/feature/details/presentation/bloc/details_state.dart';
import 'package:flutter_application_1/feature/details/presentation/widgets/carousel_slider.dart';
import 'package:flutter_application_1/feature/details/presentation/widgets/header.dart';
import 'package:flutter_application_1/feature/details/presentation/widgets/info_block.dart';
import 'package:flutter_application_1/service_locator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsBloc>(
      create: (context) => sl<DetailsBloc>()..add(LoadDetailsDataEvent()),
      child: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case DetailsDataLoading:
              return const LoadingPage();
            case DetailsDataLoaded:
              return _DetailsPage((state as DetailsDataLoaded).data);
            case DetailsDataError:
              return const ErrorPage();
            default:
              return const UnexpectedStatePage();
          }
        },
      ),
    );
  }
}

class _DetailsPage extends StatefulWidget {
  final DetailsDataEntity data;

  const _DetailsPage(this.data, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<_DetailsPage> createState() => _DetailsPageState(data);
}

class _DetailsPageState extends State<_DetailsPage> {
  var isFilterOptionsOpened = false;

  final DetailsDataEntity data;

  _DetailsPageState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const DetailsHeader(),
            Expanded(
              child: Carousel(images: data.images),
            ),
            ProductInfoBlock(data),
          ],
        ),
      ),
    );
  }
}
