import 'package:bloc/bloc.dart';
import 'package:yesist_ios_app/blocs/places/bloc/repository.dart';
import 'package:yesist_ios_app/models/place.dart';

part 'places_event.dart';
part 'places_state.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc() : super(PlacesInitial()) {
    on<FetchPlaces>(_fetchPlaces);
  }

  final repo = Repository();

  void _fetchPlaces(FetchPlaces event, Emitter<PlacesState> emit) async {
    emit(PlacesLoading());
    try {
      final places = await repo.fetchData();
      emit(PlacesLoaded(data: places));
    } catch (e) {
      emit(PlacesError(message: e.toString()));
    }
  }
}
