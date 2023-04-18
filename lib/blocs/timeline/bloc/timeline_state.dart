part of 'timeline_bloc.dart';

abstract class TimelineState {
  final List<TimelineModel>? data;
  final String? error;
  const TimelineState({
    this.data,
    this.error,
  });
}

class TimelineInitial extends TimelineState {}

class TimelineLoading extends TimelineState {}

class TimelineLoaded extends TimelineState {
  const TimelineLoaded(List<TimelineModel> data) : super(data: data);
}

class TimelineError extends TimelineState {
  const TimelineError(String error) : super(error: error);
}


