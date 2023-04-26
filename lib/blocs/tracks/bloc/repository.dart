import 'package:yesist_ios_app/blocs/tracks/bloc/data_provider.dart';
import 'package:yesist_ios_app/models/track.dart';

class Repository {
  static const _basePath = 'assets/tracks';
  static final imgs = [
    '$_basePath/tracks1.jpg',
    '$_basePath/tracks2.jpg',
    '$_basePath/tracks3.jpg',
    '$_basePath/tracks3.jpg',
    '$_basePath/tracks4.jpg',
    '$_basePath/tracks5.jpg',
    '$_basePath/tracks6.jpg'
  ];

  Future<List<Track>> fetchTracks() async {
    List<Track> tracks = [];
    final data = await DataProvider.fetchTracks();
    for (var element in data) {
      tracks.add(
        Track.fromMap(
          element,
          imgs[data.indexOf(element)],
        ),
      );
    }
    return tracks;
  }
}
