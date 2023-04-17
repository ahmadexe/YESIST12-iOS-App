// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeState {
  final HomeBanner? data;
  final String? error;
  HomeState({
    this.data,
    this.error,
  });
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  HomeLoaded(HomeBanner data) : super(data: data);
}

class HomeError extends HomeState {
  HomeError(String error) : super(error: error);
}

