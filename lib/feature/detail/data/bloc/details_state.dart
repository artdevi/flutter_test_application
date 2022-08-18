part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = DetailsStateLoading;
  const factory DetailsState.loaded({ required DetailsData detailsDataLoaded}) = DetailsStateLoaded;
  const factory DetailsState.error() = DetailsStateError;
}