import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yesist_ios_app/static/constants.dart';

class DataProvider {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<Map<String, dynamic>> getData() async {
    try {
      final DocumentSnapshot doc = await _firestore.collection(AppConstants.colCards).doc(AppConstants.docHomeCard).get();
      
      return doc.data() as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}