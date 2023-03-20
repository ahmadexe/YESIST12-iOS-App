import 'package:flutter/material.dart';
import 'package:yesist_ios_app/models/notification.dart';
import 'package:yesist_ios_app/screens/notifications/widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationsCard(
              notification: NotificationModel(
                  body: 'This is body text',
                  expiresOn: DateTime(2023, 5, 5),
                  title: 'Title'),
            )
          ],
        ),
      ),
    );
  }
}
