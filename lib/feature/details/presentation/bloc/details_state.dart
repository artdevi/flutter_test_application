import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/feature/details/domain/entities/details_data_entity.dart';

class DetailsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DetailsDataEmpty extends DetailsState {}

class DetailsDataLoading extends DetailsState {}

class DetailsDataLoaded extends DetailsState {
  final DetailsDataEntity data;

  DetailsDataLoaded({required this.data});

  @override
  List<Object?> get props => [data];
}

class DetailsDataError extends DetailsState {
  final String message;

  DetailsDataError({required this.message});

  @override
  List<Object?> get props => [message];
}
