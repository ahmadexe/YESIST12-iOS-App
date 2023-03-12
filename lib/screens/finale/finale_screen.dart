import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';

part 'widgets/_header.dart';
part 'widgets/_address_card.dart';
part 'widgets/_info_card.dart';
part 'widgets/_secondary_info_tile.dart';
part 'widgets/_resources_tile.dart';

class FinaleScreen extends StatelessWidget {
  const FinaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finale 2022 - Venue"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header(),
              Space.y1!,
              const _AddressCard(),
              Space.y2!,
              Text(
                "How to reach?",
                style: AppText.h2b,
              ),
              const _SecondaryInfoTile(
                title: "VIEW MAP",
              ),
              Space.y!,
              _ResoucesTile(
                title: "By Taxi",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    onTap: () {},
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "Catch a taxi from nearest taxi stand across from the airport. Most Taxis are medium-sized passenger vehicles but are charged the same as general taxi. Taxi fares from the airport to the hotel are fixed, so confirm the fare prior to departure.",
                      style: AppText.b2,
                    ),
                  ),
                ],
              ),
              Space.y!,
              _ResoucesTile(
                title: "By Public Transport",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    onTap: () {},
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "From Airport",
                      style: AppText.b2!.w(6),
                    ),
                    subtitle: Text(
                      "Get on a bus and get off at thr 'Sri Venkateswara College of Engineering.'",
                      style: AppText.b2,
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey[200],
                    onTap: () {},
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "From Majestic Bus Terminal",
                      style: AppText.b2!.w(6),
                    ),
                    subtitle: Text(
                      "Get on at the Majestic Bus Terminal (Bus: 282B and 282F) get off at the Sri Venkateswara College of Engineering.",
                      style: AppText.b2,
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey[200],
                    onTap: () {},
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "From East Railway Station",
                      style: AppText.b2!.w(6),
                    ),
                    subtitle: Text(
                      "Get on at the East Railway Station (Bus: 292D, 295D and 296D) get off at Sri Venkateswara College of Engineering.",
                      style: AppText.b2,
                    ),
                  ),
                ],
              ),
              const _SecondaryInfoTile(
                title: "VIEW ACCOMODATIONS",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
