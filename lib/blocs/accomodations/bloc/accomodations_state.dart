// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'accomodations_bloc.dart';

@immutable
abstract class AccomodationsState {}

class AccomodationsInitial extends AccomodationsState {
  final List<Accomodation>? accomodations;
  final String? message;
  AccomodationsInitial({
    this.accomodations,
    this.message,
  });
}

class AccomodationsLoading extends AccomodationsState {}

class AccomodationsLoaded extends AccomodationsState {
  final List<Accomodation>? accomodations;
  AccomodationsLoaded({
    this.accomodations,
  });
}

class AccomodationsError extends AccomodationsState {
  final String? message;
  AccomodationsError({
    this.message,
  });
}
