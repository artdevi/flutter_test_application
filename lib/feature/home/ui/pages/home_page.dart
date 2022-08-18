import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/home/bloc/home_bloc.dart';
import 'package:flutter_application_1/feature/home/data/repositories/home_data_repo.dart';
import 'package:flutter_application_1/feature/home/ui/widgets/home_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final repository = HomeDataRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(homeDataRepo: repository),
        child: const HomeBody(),
      ),
    );
  }
}