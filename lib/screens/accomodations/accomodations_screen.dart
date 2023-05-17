import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yesist_ios_app/blocs/accomodations/bloc/accomodations_bloc.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/space.dart';
import 'package:yesist_ios_app/models/accomodation.dart';
import 'package:yesist_ios_app/utils/url_utils.dart';

part 'widgets/_accomodations_card.dart';

class AccomodationsScreen extends StatefulWidget {
  const AccomodationsScreen({super.key});

  @override
  State<AccomodationsScreen> createState() => _AccomodationsScreenState();
}

class _AccomodationsScreenState extends State<AccomodationsScreen> {
  @override
  void initState() {
    super.initState();
    final accomodationsBloc = BlocProvider.of<AccomodationsBloc>(context);
    accomodationsBloc.add(FetchAccomodations());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accomodations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // child: ListView.separated(
          //   itemCount: 8,
          //   itemBuilder: (context, index) {
          //     return AccomodationsCard(
          //       accomodation: DummyData.accomodations[0],
          //     );
          //   },
          //   separatorBuilder: (context, index) {
          //     return Space.y!;
          //   },
          // ),
          child: BlocBuilder<AccomodationsBloc, AccomodationsState>(
            builder: (context, state) {
              if (state is AccomodationsLoading ||
                  state is AccomodationsInitial) {
                return const CircularProgressIndicator();
              } else if (state is AccomodationsLoaded) {
                final data = state.accomodations!;
                return ListView.separated(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return AccomodationsCard(
                      accomodation: data[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Space.y!;
                  },
                );
              } else if (state is AccomodationsError) {
                return Text(state.message!);
              }
              return const Text('Something went wrong');
            },
          ),
        ),
      ),
    );
  }
}
