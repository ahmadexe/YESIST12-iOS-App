import 'package:yesist_ios_app/blocs/places/bloc/data_provider.dart';
import 'package:yesist_ios_app/models/place.dart';

class Repository {
  
  Future<List<Place>> fetchData() async {
    try {
      final data = await DataProvider.fetchPlaces();
      return data.map((e) => Place.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}