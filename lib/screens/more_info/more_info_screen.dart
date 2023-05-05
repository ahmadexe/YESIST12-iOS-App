import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/mobile_layout.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';
import 'package:yesist_ios_app/screens/about/about_screen.dart';
import 'package:yesist_ios_app/screens/faqs/faqs_screen.dart';
import 'package:yesist_ios_app/screens/notifications/notifications_screen.dart';
import 'package:yesist_ios_app/screens/places/places_screen.dart';
import 'package:yesist_ios_app/static/constants.dart';

import 'data/data.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = AppProvider.state(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight2,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/logos/logo.png'),
            Text(
              "A program under ASIST - Augmented Social Innovations through Science and Technology",
              style: AppText.l2!.copyWith(color: Colors.black),
              maxLines: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: StaticColors.greyBG,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Data.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Data.data[index]['icon'],
                      color: StaticColors.primaryColor,
                    ),
                    title: Text(
                      Data.data[index]['title'],
                      style: AppText.l1!.copyWith(color: Colors.black),
                    ),
                    onTap: () {
                      switch (Data.data[index]['title']) {
                        case 'Places to visit':
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PlacesScreen(),
                            ),
                          );
                          break;

                        case 'About Us':
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AboutScreen(),
                            ),
                          );
                          break;

                        case 'Notifcation History':
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const NotificationsScreen(),
                            ),
                          );
                          break;

                        case 'Finale':
                          app.setBottomNavIndex(3);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const MobileLayout(),
                            ),
                          );
                          break;

                        case 'Home':
                          app.setBottomNavIndex(0);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const MobileLayout(),
                            ),
                          );
                          break;

                        case 'Timeline':
                          app.setBottomNavIndex(1);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const MobileLayout(),
                            ),
                          );
                          break;

                        case 'Tracks':
                          app.setBottomNavIndex(2);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const MobileLayout(),
                            ),
                          );
                          break;
                      }
                    },
                  );
                },
              ),
              const Divider(
                color: StaticColors.primaryColor,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Data.secondaryData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Data.secondaryData[index]['icon'],
                      color: StaticColors.primaryColor,
                    ),
                    title: Text(
                      Data.secondaryData[index]['title'],
                      style: AppText.l1!.copyWith(color: Colors.black),
                    ),
                    onTap: () {
                      switch (Data.secondaryData[index]['title']) {
                        case 'FAQs':
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => const FaqsScreen()),
                          );
                          break;
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
