import 'package:flutter_application_1/feature/details/domain/usecases/get_details_data.dart';
import 'package:flutter_application_1/feature/details/presentation/bloc/details_event.dart';
import 'package:flutter_application_1/feature/details/presentation/bloc/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetDetailsData getData;

  DetailsBloc(this.getData) : super(DetailsDataEmpty()) {
    on<LoadDetailsDataEvent>((event, emit) async {
      emit(DetailsDataLoading());
      final failureOrData = await getData();
      failureOrData.fold((failure) => emit(DetailsDataError(message: '')),
          (data) => emit(DetailsDataLoaded(data: data)));
    });
  }
}
