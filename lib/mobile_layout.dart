import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/screens/finale/finale_screen.dart';
import 'package:yesist_ios_app/screens/more_info/more_info_screen.dart';
import 'package:yesist_ios_app/screens/timeline/timeline_screen.dart';
import 'package:yesist_ios_app/screens/tracks/tracks_screen.dart';

import 'providers/app_provider.dart';
import 'screens/home/home_screen.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    final app = AppProvider.state(context);
    _pageController = PageController(initialPage: app.bottomNavIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  // void navigationTapped(int page) {
  //   _pageController.jumpToPage(page);
  // }

  onPageChanged(int page) {
    AppProvider.state(context).setBottomNavIndex(page);
    _pageController.jumpToPage(page);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final app = AppProvider.state(context);
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          TimelineScreen(),
          TracksScreen(),
          FinaleScreen(),
          MoreInfoScreen(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        height: 40,
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,
                  color: app.bottomNavIndex == 0
                      ? StaticColors.primaryColor
                      : Colors.grey),
              backgroundColor: Colors.white,
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar,
                color: app.bottomNavIndex == 1
                    ? StaticColors.primaryColor
                    : Colors.grey),
            label: "",
            backgroundColor: Colors.white,

            // backgroundColor: customPrimaryColorLight,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3_fill,
                color: app.bottomNavIndex == 2
                    ? StaticColors.primaryColor
                    : Colors.grey),
            label: "",
            backgroundColor: Colors.white,

            // backgroundColor: customPrimaryColorLight,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.location_fill,
                color: app.bottomNavIndex == 3
                    ? StaticColors.primaryColor
                    : Colors.grey),
            label: "",
            backgroundColor: Colors.white,
            // backgroundColor: customPrimaryColorLight,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz,
                color: app.bottomNavIndex == 4
                    ? StaticColors.primaryColor
                    : Colors.grey),
            label: "",
            backgroundColor: Colors.white,

            // backgroundColor: customPrimaryColorLight,
          ),
        ],
        onTap: (page) {
          onPageChanged(page);
        },
      ),
    );
  }
}
