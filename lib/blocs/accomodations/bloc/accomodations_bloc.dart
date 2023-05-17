import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/blocs/accomodations/bloc/repository.dart';

import 'package:yesist_ios_app/models/accomodation.dart';

part 'accomodations_event.dart';
part 'accomodations_state.dart';

class AccomodationsBloc extends Bloc<AccomodationsEvent, AccomodationsState> {
  AccomodationsBloc() : super(AccomodationsInitial()) {
    on<FetchAccomodations>(_fetchAccomodations);
  }
  final repo = Repository();

  void _fetchAccomodations(
      FetchAccomodations event, Emitter<AccomodationsState> emit) async {
    emit(AccomodationsLoading());
    try {
      List<Accomodation> accomodations = await repo.fetchAccomodations();
      emit(AccomodationsLoaded(accomodations: accomodations));
    } catch (e) {
      emit(AccomodationsError(message: e.toString()));
    }
  }
}
