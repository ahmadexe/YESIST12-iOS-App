import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/static/constants.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight2,
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
    );
  }
}
