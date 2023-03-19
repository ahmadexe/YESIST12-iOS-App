import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/models/track.dart';

class TrackCard extends StatelessWidget {
  final Track track;
  const TrackCard({required this.track, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDimensions.normalize(80),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimensions.normalize(10),
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              AppDimensions.normalize(10),
            ),
            child: CachedNetworkImage(
              imageUrl: track.imgUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppDimensions.normalize(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: AppDimensions.normalize(10),
            left: AppDimensions.normalize(10),
            child: Text(
              track.name,
              style: AppText.h1!.w(6).copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            top: AppDimensions.normalize(8),
            left: AppDimensions.normalize(10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  height: AppDimensions.normalize(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppDimensions.normalize(10),
                    ),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "1st Prize ${track.firstPrize}",
                    style: AppText.l2b!.copyWith(color: Colors.white),
                  ),
                ),
                Space.y!,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  height: AppDimensions.normalize(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppDimensions.normalize(10),
                    ),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "2nd Prize ${track.secondPrize}",
                    style: AppText.l2b!.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
