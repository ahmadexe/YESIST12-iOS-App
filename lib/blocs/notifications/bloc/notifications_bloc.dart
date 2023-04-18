import 'package:bloc/bloc.dart';
import 'package:yesist_ios_app/blocs/notifications/bloc/repository.dart';
import 'package:yesist_ios_app/models/notification.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(NotificationsInitial()) {
    on<FetchNotifications>(_fetchNotifications);
  }

  final repo = Repository();

  Future<void> _fetchNotifications(
      FetchNotifications event, Emitter<NotificationsState> emit) async {
    emit(NotificationsLoading());
    try {
      final notifications = await repo.getNotifications();
      emit(NotificationsLoaded(notifications: notifications));
    } catch (e) {
      emit(NotificationsError(message: e.toString()));
    }
  }
}
