import 'package:flutter_application_1/feature/detail/data/models/details_data.dart';
import 'package:flutter_application_1/feature/detail/data/repositories/details_data_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_bloc.freezed.dart';
// part 'details_bloc.g.dart';
part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailsDataRepo detailsDataRepo;
  DetailsBloc({required this.detailsDataRepo}) : super(const DetailsState.loading()) {
    on<DetailsEventFetch>((event, emit) async {
      emit(const DetailsState.loading());
      try {
        DetailsData detailsDataLoaded = await detailsDataRepo.getData();
        emit(DetailsState.loaded(detailsDataLoaded: detailsDataLoaded));
      } catch (_) {
        emit(const DetailsState.error());
      }
    });
  }
}