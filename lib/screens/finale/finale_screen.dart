import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/providers/app_provider.dart';
part 'widgets/_header.dart';
part 'widgets/_address_card.dart';

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
        child: Column(
          children: [
            const _Header(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const _AddressCard(),
          ],
        ),
      ),
    );
  }
}
