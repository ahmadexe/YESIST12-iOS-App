import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/models/place.dart';
import 'package:yesist_ios_app/screens/places_details/places_details_screen.dart';

import '../../blocs/places/bloc/places_bloc.dart';

part 'widgets/_banner.dart';
part 'widgets/_places_card.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  void initState() {
    super.initState();

    final placesBloc = BlocProvider.of<PlacesBloc>(context);
    placesBloc.add(FetchPlaces());
  }

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
            BlocBuilder<PlacesBloc, PlacesState>(
              builder: (context, state) {
                if (state is PlacesInitial || state is PlacesLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is PlacesLoaded) {
                  return Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      ...state.data!.map((e) => _PlacesCard(place: e))
                    ],
                  );
                } else {
                  return const Center(
                    child: Text('Something went wrong'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
