part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.loaded({ required HomeData homeDataLoaded}) = HomeStateLoaded;
  const factory HomeState.error() = HomeStateError;
}