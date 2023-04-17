import 'package:bloc/bloc.dart';
import 'package:yesist_ios_app/blocs/home/bloc/repository.dart';
import 'package:yesist_ios_app/models/home_banner.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GetHomeBanner>(_getData);
  }

  final repo = Repository();
  _getData(GetHomeBanner event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      HomeBanner data = await repo.getData();
      emit(HomeLoaded(data));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

}
