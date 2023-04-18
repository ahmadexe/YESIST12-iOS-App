import 'package:cloud_firestore/cloud_firestore.dart';

class DataProvider {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<Map<String, dynamic>>> getData() async {
    try {
      final snapshot = await _firestore.collection('timeline').get();
      List<Map<String, dynamic>> list = snapshot.docs.map((e) => e.data()).toList();
      return list;
    } catch (e) {
      rethrow;
    }
  }
}