import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yesist_ios_app/configs/configs.dart';

part 'widgets/_banner.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places"),
      ),
      body: const Center(
        child: _Banner(),
      ),
    );
  }
}