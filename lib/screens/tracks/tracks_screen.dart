import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/dummy_data/dummy_data.dart';
import 'package:yesist_ios_app/screens/tracks/widgets/track_card.dart';
import 'package:yesist_ios_app/static/constants.dart';

class TracksScreen extends StatelessWidget {
  const TracksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight2,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tracks",
              style: AppText.h3,
            ),
            Text(
              "Choose a track to participate",
              style: AppText.l1,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView.separated(
            itemCount: DummyData.tracks.length,
            itemBuilder: (context, index) {
              return TrackCard(
                track: DummyData.tracks[index],
              );
            },
            separatorBuilder: (context, index) {
              return Space.y!;
            },
          ),
        ),
      ),
    );
  }
}
