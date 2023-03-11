import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/screens/finale/finale_screen.dart';
import 'package:yesist_ios_app/screens/more_info/more_info_screen.dart';
import 'package:yesist_ios_app/screens/timeline/timeline_screen.dart';
import 'package:yesist_ios_app/screens/tracks/tracks.dart';

import 'screens/home/home_screen.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {

  int _page = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            icon: Icon(Icons.home, color: _page == 0? StaticColors.primaryColor : Colors.grey),
            backgroundColor: Colors.white,
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: _page == 1? Colors.blue : Colors.grey),
            label: "",
            backgroundColor: Colors.white,

            // backgroundColor: customPrimaryColorLight,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt, color: _page == 2? Colors.blue : Colors.grey),
            label: "",
            backgroundColor: Colors.white,

            // backgroundColor: customPrimaryColorLight,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloudy_snowing, color: _page == 3? Colors.blue : Colors.grey),
            label: "",
            backgroundColor: Colors.white,
            // backgroundColor: customPrimaryColorLight,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _page == 4? Colors.blue : Colors.grey),
            label: "",
            backgroundColor: Colors.white,

            // backgroundColor: customPrimaryColorLight,
          ),
        ],
        onTap: (page) {
          navigationTapped(page);
        },
      ),
    );
  }
}