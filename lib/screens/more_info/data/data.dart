import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  static List<Map<String, dynamic>> data = [
    {
      'icon': Icons.home_outlined,
      'title': 'Home',
    },
    {
      'icon': CupertinoIcons.calendar,
      'title': 'Timeline',
    },
    {
      'icon': CupertinoIcons.circle_grid_3x3_fill,
      'title': 'Tracks',
    },
    {
      'icon': Icons.handshake_outlined,
      'title': 'Sponsers',
    },
    {
      'icon': CupertinoIcons.location_fill,
      'title': 'Finale',
    },
    {
      'icon': Icons.castle_outlined,
      'title': 'Places to visit',
    },
    {
      'icon': Icons.sms_failed_outlined,
      'title': 'About us',
    },
    {
      'icon': Icons.notifications,
      'title': 'Notifcation history',
    }
  ];
  
  static List<Map<String, dynamic>> secondaryData = [
    {
      'icon': Icons.question_answer_outlined,
      'title': 'FAQs',
    },
    {
      'icon': Icons.share,
      'title': 'Share',
    }
  ];
}