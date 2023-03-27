import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/models/place.dart';
import 'package:yesist_ios_app/static/constants.dart';

part 'widgets/_location_tag.dart';

class PlacesDetailsScreen extends StatelessWidget {
  final Place place;
  const PlacesDetailsScreen({required this.place, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight2,
        title: _LocationTag(place: place),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: AppDimensions.normalize(65),
            child: CachedNetworkImage(
              imageUrl: place.image1,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: AppText.h2b!.w(5),
                ),
                Space.y!,
                RatingBar.builder(
                  initialRating: place.stars,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                Text(
                  place.location,
                  style: AppText.l1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
