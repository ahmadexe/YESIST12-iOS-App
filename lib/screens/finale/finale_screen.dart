import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/screens/accomodations/accomodations_screen.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:yesist_ios_app/static/constants.dart';
import 'package:yesist_ios_app/utils/url_utils.dart';

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
        automaticallyImplyLeading: false,
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
                isMap: true,
              ),
              Space.y2!,
              Text(
                "From Borg El Arab Airport",
                style: AppText.h2b,
              ),
              Space.y!,
              _ResoucesTile(
                title: "Take an Airport taxi",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    onTap: () {
                      UrlUtils.launchTheUrl(
                          "https://www.alexandria-airport.com/taxi-service/");
                    },
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "Visit https://www.alexandria-airport.com/taxi-service/ and book a taxi.",
                      style: AppText.b2,
                    ),
                  ),
                ],
              ),
              Space.y!,
              _ResoucesTile(
                title: "Take an Airport taxi",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    onTap: () {
                      UrlUtils.launchTheUrl(
                          "https://cairoshuttlebus.com/?gclid=EAIaIQobChMI7v7WmITS_AIVAI5oCR00RgFCEAAYAyAAEgIdOPD_BwE");
                    },
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "Shuttle Bus - Click here",
                      style: AppText.b2,
                    ),
                  ),
                ],
              ),
              Space.y!,
              _ResoucesTile(
                title: "Take Uber Taxi",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "Uber Taxi - Taxi fare from Borg Elarab Airport to Abu Kir can cost approximately (Uber Taxi ~\$15 USD).",
                      style: AppText.b2,
                    ),
                  ),
                ],
              ),
              Space.y2!,
              Text(
                "From Cairo Internation Airport",
                style: AppText.h2b,
              ),
              _ResoucesTile(
                title: "Take a bus",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      '''1- Terminal Shuttle bus (free) to Superjet Bus
2- Superjet bus to Smouha Alexandria (~5\$)
3- Uber from Smouha to AASTMT (~3\$)''',
                      style: AppText.b2,
                    ),
                  ),
                ],
              ),
              Space.y!,
              _ResoucesTile(
                title: "Take Uber Taxi",
                descWidgets: [
                  ListTile(
                    tileColor: Colors.grey[200],
                    dense: true,
                    contentPadding: const EdgeInsets.all(8),
                    visualDensity: VisualDensity.compact,
                    minLeadingWidth: 10,
                    title: Text(
                      "Uber Taxi to AASTMT (~50\$)",
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
