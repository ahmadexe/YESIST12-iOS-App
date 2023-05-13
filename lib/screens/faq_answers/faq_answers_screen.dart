import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';

part 'widgets/_qna_tile.dart';

class FaqAnswersScreen extends StatelessWidget {
  final Map<String, dynamic> faqTrack;
  const FaqAnswersScreen({required this.faqTrack, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.separated(
          itemCount: faqTrack['questions'].length,
          itemBuilder: (context, index) {
            return _QnATile(
              title: faqTrack['questions'][index],
              description: faqTrack['answers'][index],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}
