import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/space.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/models/track.dart';
import 'package:yesist_ios_app/utils/string_utils.dart';

part 'widgets/_custom_expansion_tile.dart';

class TrackDetailsScreen extends StatelessWidget {
  final Track track;
  const TrackDetailsScreen({required this.track, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: AppDimensions.normalize(60),
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                track.name,
              ),
              background: CachedNetworkImage(
                imageUrl: track.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Event Updates',
                style: AppText.h3b,
              ),
              Space.y!,
              _CustomExpansionTile(title: 'Reg. Fee', description: track.fees),
              Space.y2!,
              Text(
                'About Event',
                style: AppText.h3b,
              ),
              Space.y!,
              Text(track.description, style: AppText.l1),
              Space.y2!,
              _CustomExpansionTile(
                  title: 'Rules for Track', description: track.rules),
              Space.y!,
              _CustomExpansionTile(
                  title: 'Abstract Selection Process', description: track.sp),
            ],
          ),
        ),
      ),
    );
  }
}
