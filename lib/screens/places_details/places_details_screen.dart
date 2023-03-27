import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: AppText.h2!.w(6),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: place.stars,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.location_fill),
                      color: Colors.blue,
                    )
                  ],
                ),
                Text(
                  place.location,
                  style: AppText.l2,
                ),
                const Divider(
                  height: 10,
                ),
                Space.y2!,
                Text(
                  "Description",
                  style: AppText.h2!.w(6),
                ),
                Text(
                  place.description,
                  style: AppText.b2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
