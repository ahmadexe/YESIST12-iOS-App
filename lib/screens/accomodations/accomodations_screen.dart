import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/space.dart';
import 'package:yesist_ios_app/dummy_data/dummy_data.dart';
import 'package:yesist_ios_app/models/accomodation.dart';

part 'widgets/_accomodations_card.dart';

class AccomodationsScreen extends StatelessWidget {
  const AccomodationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Accomodations'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ListView.separated(
              itemCount: 8,
              itemBuilder: (context, index) {
                return AccomodationsCard(
                  accomodation: DummyData.accomodations[0],
                );
              },
              separatorBuilder: (context, index) {
                return Space.y!;
              },
            ),
          ),
        ));
  }
}
