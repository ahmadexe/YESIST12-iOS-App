import 'package:yesist_ios_app/blocs/timeline/bloc/data_provider.dart';
import 'package:yesist_ios_app/models/timeline.dart';

class Repository {
  Future<List<TimelineModel>> getTimelines() async {
    try {
      List<Map<String, dynamic>> data = await DataProvider.getData();
      List<TimelineModel> list = [];
      for (var element in data) { 
        list.add(TimelineModel.fromMap(element));
      }
      return list;
    } catch (e) {
      rethrow;
    }
  } 
}