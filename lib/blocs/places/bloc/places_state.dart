part of 'places_bloc.dart';

abstract class PlacesState {
  final List<Place>? data;
  final String? message;

  const PlacesState({this.data, this.message});
}

class PlacesInitial extends PlacesState {}

class PlacesLoading extends PlacesState {}

class PlacesLoaded extends PlacesState {
  const PlacesLoaded({required List<Place> data}) : super(data: data);
}

class PlacesError extends PlacesState {
  const PlacesError({required String message}) : super(message: message);
}