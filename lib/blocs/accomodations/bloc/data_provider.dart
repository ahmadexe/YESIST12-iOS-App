import 'package:cloud_firestore/cloud_firestore.dart';

class DataProvider {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<Map<String, dynamic>>> fetchAccomodations() async {
    try {
      List<Map<String, dynamic>> accomodations = [];
      await _firestore.collection('accomodations').get().then((querySnapshot) {
        for (var doc in querySnapshot.docs) {
          accomodations.add(doc.data());
        }
      });
      return accomodations;
    } catch (e) {
      throw Exception("Something went wrong, please try later.");
    }
  }
}
