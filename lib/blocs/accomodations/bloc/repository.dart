import 'package:yesist_ios_app/blocs/accomodations/bloc/data_provider.dart';
import 'package:yesist_ios_app/models/accomodation.dart';

class Repository {
  Future<List<Accomodation>> fetchAccomodations() async {
    try {
      List<Map<String, dynamic>> data = await DataProvider.fetchAccomodations();
      List<Accomodation> accomodations = [];
      for (var element in data) {
        accomodations.add(Accomodation.fromMap(element));
      }
      return accomodations;
    } catch (e) {
      rethrow;
    }
  }
}
