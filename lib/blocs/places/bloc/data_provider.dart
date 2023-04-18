import 'package:cloud_firestore/cloud_firestore.dart';

class DataProvider {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<Map<String, dynamic>>> fetchPlaces() async {
    try {
      final data = await _firestore.collection('places').get();
      return data.docs.map((e) => e.data()).toList();
    } catch (e) {
      rethrow;
    }
  }
}
