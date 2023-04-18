part of 'notifications_bloc.dart';

abstract class NotificationsState {
  final List<NotificationModel>? notifications;
  final String? message;
  const NotificationsState({this.notifications, this.message});
}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoading extends NotificationsState {}

class NotificationsLoaded extends NotificationsState {
  const NotificationsLoaded({required List<NotificationModel> notifications})
      : super(notifications: notifications);
}

class NotificationsError extends NotificationsState {
  const NotificationsError({required String message})
      : super(message: message);
}
