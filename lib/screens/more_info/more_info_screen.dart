import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/static/constants.dart';

import 'data/data.dart';

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
