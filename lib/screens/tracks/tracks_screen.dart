import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yesist_ios_app/blocs/tracks/bloc/tracks_bloc.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/screens/tracks/widgets/track_card.dart';
import 'package:yesist_ios_app/static/constants.dart';

class TracksScreen extends StatefulWidget {
  const TracksScreen({super.key});

  @override
  State<TracksScreen> createState() => _TracksScreenState();
}

class _TracksScreenState extends State<TracksScreen> {

  @override
  void initState() {
    super.initState();
    final tracksBloc = BlocProvider.of<TracksBloc>(context);
    tracksBloc.add(FetchTracks());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight2,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tracks",
              style: AppText.h3,
            ),
            Text(
              "Choose a track to participate",
              style: AppText.l1,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: BlocBuilder<TracksBloc, TracksState>(
            builder: (context, state) {
              if (state is TracksLoading || state is TracksInitial) {
                return const CircularProgressIndicator();
              } else if (state is TracksLoaded) {
                final data = state.data!;
                return ListView.separated(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return TrackCard(
                      track: data[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Space.y!;
                  },
                );
              } else {
                return Center(
                  child: Text(state.message!),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
