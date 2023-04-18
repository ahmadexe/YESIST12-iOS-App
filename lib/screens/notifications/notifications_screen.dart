import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yesist_ios_app/blocs/notifications/bloc/notifications_bloc.dart';
import 'package:yesist_ios_app/configs/space.dart';
import 'package:yesist_ios_app/screens/notifications/widgets/notification_card.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();

    final notificationBloc = BlocProvider.of<NotificationsBloc>(context);
    notificationBloc.add(FetchNotifications());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<NotificationsBloc, NotificationsState>(
          builder: (context, state) {
            if (state is NotificationsInitial ||
                state is NotificationsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is NotificationsLoaded) {
              return ListView.separated(
                itemCount: state.notifications!.length,
                itemBuilder: (context, index) {
                  final notification = state.notifications![index];
                  return NotificationsCard(notification: notification);
                },
                separatorBuilder: (context, index) {
                  return Space.y1!;
                },
              );
            } else {
              return const Center(
                child: Text('Something went wrong'),
              );
            }
          },
        ),
      ),
    );
  }
}
