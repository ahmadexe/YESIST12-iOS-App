import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/strings/app_strings.dart';

part 'widgets/_bullet_point.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: AppText.h2!.w(6),
            ),
            Text(AppStrings.aboutusMain, style: AppText.l1),
            Space.y2!,
            Text(
              'Our Mission',
              style: AppText.h2!.w(6),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: AppStrings.aboutusMission.length,
              itemBuilder: (context, index) {
                return _BulletPoint(text: AppStrings.aboutusMission[index]);
              },
            ),
            Space.y!,
            Text(
              'Our Vision',
              style: AppText.h2!.w(6),
            ),
            Text(
              AppStrings.aboutusVision,
              style: AppText.l1,
            ),
          ],
        ),
      ),
    );
  }
}
