import 'package:cloud_firestore/cloud_firestore.dart';

class DataProvider {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<Map<String, dynamic>>> getNotifications() async {
    try {
      final notifications = await _firestore.collection('notifications').get();
      return notifications.docs.map((e) => e.data()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
