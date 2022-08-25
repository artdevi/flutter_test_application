import 'package:flutter_application_1/feature/home/domain/usecases/get_home_data.dart';
import 'package:flutter_application_1/feature/home/presentation/bloc/home_event.dart';
import 'package:flutter_application_1/feature/home/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeData getData;

  HomeBloc(this.getData) : super(HomeDataEmpty()) {
    on<LoadHomeDataEvent>((event, emit) async {
      emit(HomeDataLoading());
      final failureOrData = await getData();
      failureOrData.fold((failure) => emit(HomeDataError(message: '')),
          (data) => emit(HomeDataLoaded(data: data)));
    });
  }
}
