import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/models/timeline.dart';
import 'package:yesist_ios_app/static/constants.dart';

part 'widgets/_timeline_card.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight2,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Timeline", style: AppText.h2!),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("March 2023", style: AppText.b2!),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("03:11 PM", style: AppText.b2!),
                    Text("PST", style: AppText.b2!)
                  ],
                )
              ],
            )
          ],
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _TimelineCard(
              timeline: TimelineModel(
                title: "Title",
                date: DateTime.now(),
                description: "Description",
                startTime: DateTime.now(),
                endTime: DateTime(2023, 3, 19),
                eventUrl: "s",
                speakers: ["Ahmad"],
              ),
            )
          ],
        ),
      ),
    );
  }
}
