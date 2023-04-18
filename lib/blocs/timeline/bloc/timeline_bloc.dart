import 'package:bloc/bloc.dart';
import 'package:yesist_ios_app/blocs/timeline/bloc/repository.dart';
import 'package:yesist_ios_app/models/timeline.dart';

part 'timeline_event.dart';
part 'timeline_state.dart';

class TimelineBloc extends Bloc<TimelineEvent, TimelineState> {
  TimelineBloc() : super(TimelineInitial()) {
    on<GetTimeLines>(_getTimelines);
  }

  final repo = Repository();

  void _getTimelines(GetTimeLines event, Emitter<TimelineState> emit) async {
    emit(TimelineLoading());
    try {
      List<TimelineModel> data = await repo.getTimelines();
      emit(TimelineLoaded(data));
    } catch (e) {
      emit(TimelineError(e.toString()));
    }
  }
}
