import 'package:yesist_ios_app/blocs/home/bloc/data_provider.dart';
import 'package:yesist_ios_app/models/home_banner.dart';

class Repository {
  Future<HomeBanner> getData() async {
    try {
      Map<String, dynamic> data = await DataProvider.getData();
      return HomeBanner.fromMap(data);
    } catch (e) {
      rethrow;
    }
  }
}