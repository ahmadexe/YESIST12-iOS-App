import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';

part 'widgets/_sponsor_logo.dart';

class SponsorsScreen extends StatelessWidget {
  const SponsorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sponsors'),
      ),
      body: const Wrap(
        alignment: WrapAlignment.center,
        children: [
          _SponsorLogo(),
          _SponsorLogo(),
          _SponsorLogo(),
          _SponsorLogo(),
        ],
      ),
    );
  }
}
