// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tracks_bloc.dart';

abstract class TracksState {
  final List<Track>? data;
  final String? message;
  const TracksState({
    this.data,
    this.message,
  });
}

class TracksInitial extends TracksState {}

class TracksLoading extends TracksState {}

class TracksLoaded extends TracksState {
  const TracksLoaded(List<Track> data) : super(data: data);
}

class TracksError extends TracksState {
  const TracksError(String message) : super(message: message);
}
