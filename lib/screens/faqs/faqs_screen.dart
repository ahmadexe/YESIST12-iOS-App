import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/configs/app_theme.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/space.dart';
import 'package:yesist_ios_app/screens/faq_answers/faq_answers_screen.dart';
import 'package:yesist_ios_app/screens/faqs/data/data.dart';

part 'widgets/_faq_card.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            runSpacing: AppDimensions.normalize(3),
            children: [
              ...Data.faqTracks
                  .map(
                    (e) => _FaqCard(faqTrack: e),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
