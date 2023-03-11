import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';
import 'package:yesist_ios_app/static/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = AppProvider.state(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "IEEE YESIST-12",
                      style: app.text.h1,
                    ),
                    Text(
                      "2022",
                      style: app.text.t2,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none))
              ],
            ),
            SizedBox(height: AppDimensions.normalize(10)),
            Text(
              "A program under ASIST - Augmented Social Innovations through Science and Technology",
              style: app.text.t2,
              maxLines: 2,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/people.png",
                          height: AppDimensions.normalize(80),
                          width: AppDimensions.normalize(80),
                          fit: BoxFit.fill),
                      Text("3000", style: app.text.h2b),
                      Text(
                        "Participants",
                        style: app.text.t1b.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/bookmark.png",
                          height: AppDimensions.normalize(80),
                          width: AppDimensions.normalize(80),
                          fit: BoxFit.fill),
                      Text("100", style: app.text.h2b),
                      Text(
                        "Pilots",
                        style: app.text.t1b.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Space.y1!,
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/earth.png",
                          height: AppDimensions.normalize(80),
                          width: AppDimensions.normalize(80),
                          fit: BoxFit.fill),
                      Text("15", style: app.text.h2b),
                      Text(
                        "Countries",
                        style: app.text.t1b.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/books.png",
                          height: AppDimensions.normalize(80),
                          width: AppDimensions.normalize(80),
                          fit: BoxFit.fill),
                      Text("5", style: app.text.h2b),
                      Text(
                        "Tracks",
                        style: app.text.t1b.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
