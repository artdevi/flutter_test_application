import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/detail/data/bloc/details_bloc.dart';
import 'package:flutter_application_1/feature/detail/data/repositories/details_data_repo.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/details_body.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  final repository = DetailsDataRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => DetailsBloc(detailsDataRepo: repository),
        child: const DetailsBody(),
      ),
    );
  }
}