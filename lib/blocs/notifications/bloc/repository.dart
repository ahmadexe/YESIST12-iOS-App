import 'package:yesist_ios_app/blocs/notifications/bloc/data_provider.dart';
import 'package:yesist_ios_app/models/notification.dart';

class Repository {
  Future<List<NotificationModel>> getNotifications() async {
    try {
      final data = await DataProvider.getNotifications();
      return data.map((e) => NotificationModel.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
