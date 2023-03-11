import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
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
                    Text("IEEE YESIST-12", style: app.text.h1,),
                    Text("2022", style: app.text.t2,),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none))
              ],
            ),
            SizedBox(height: AppDimensions.normalize(10)),
            Text("A program under ASIST - Augmented Social Innovations through Science and Technology", style: app.text.t2, maxLines: 2,),
          ],
        ),
      ),
      body: const Center(
        child: Text('data'),
      ),
    );
  }
}