import 'package:bloc/bloc.dart';
import 'package:yesist_ios_app/blocs/tracks/bloc/repository.dart';

import '../../../models/track.dart';

part 'tracks_event.dart';
part 'tracks_state.dart';

class TracksBloc extends Bloc<TracksEvent, TracksState> {
  TracksBloc() : super(TracksInitial()) {
    on<FetchTracks>(_fetchTracks);
  }

  final repo = Repository();
  _fetchTracks(FetchTracks event, Emitter<TracksState> emit) async {
    emit(TracksLoading());
    try {
      final tracks = await repo.fetchTracks();
      emit(TracksLoaded(tracks));
    } catch (e) {
      emit(TracksError(e.toString()));
    }
  }
}
