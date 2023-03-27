import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/dummy_data/dummy_data.dart';
import 'package:yesist_ios_app/models/place.dart';

part 'widgets/_banner.dart';
part 'widgets/_places_card.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const _Banner(),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ...DummyData.places.map(
                  (e) => _PlacesCard(
                    place: e,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
