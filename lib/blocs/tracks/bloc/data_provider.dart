import 'dart:convert';

import 'package:http/http.dart' as http;

class DataProvider {
  static final _client = http.Client();
  static const String _url =
      "https://yesist12-default-rtdb.asia-southeast1.firebasedatabase.app/tracks.json";
  static Future<List<Map<String, dynamic>>> fetchTracks() async {
    try {
      final response = await _client.get(Uri.parse(_url));
      final jsonData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> tracks =
            List<Map<String, dynamic>>.from(jsonData);
        return tracks;
      } else {
        throw "Can't fetch tracks";
      }
    } catch (e) {
      throw "Can't fetch tracks";
    }
  }
}
