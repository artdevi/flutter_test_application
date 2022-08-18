import 'package:flutter_application_1/feature/home/data/models/home_data.dart';
import 'package:flutter_application_1/feature/home/data/repositories/home_data_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
// part 'home_bloc.g.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeDataRepo homeDataRepo;
  HomeBloc({required this.homeDataRepo}) : super(const HomeState.loading()) {
    on<HomeEventFetch>((event, emit) async {
      emit(const HomeState.loading());
      try {
        HomeData homeDataLoaded = await homeDataRepo.getData();
        emit(HomeState.loaded(homeDataLoaded: homeDataLoaded));
      } catch (_) {
        emit(const HomeState.error());
      }
    });
  }
}