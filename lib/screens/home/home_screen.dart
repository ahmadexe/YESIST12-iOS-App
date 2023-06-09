import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yesist_ios_app/blocs/home/bloc/home_bloc.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/models/home_banner.dart';
import 'package:yesist_ios_app/screens/notifications/notifications_screen.dart';
import 'package:yesist_ios_app/static/constants.dart';
import 'package:yesist_ios_app/utils/url_utils.dart';

part 'widgets/_resources_tile.dart';
part 'widgets/_home_card.dart';
part 'data/_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    homeBloc.add(GetHomeBanner());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppConstants.toolbarHeight,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "IEEE YESIST-12",
                      style: AppText.h1!.w(4),
                    ),
                    Text(
                      "2022",
                      style: AppText.l1,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const NotificationsScreen()));
                    },
                    icon: const Icon(Icons.notifications_none))
              ],
            ),
            SizedBox(height: AppDimensions.normalize(10)),
            Text(
              "A program under ASIST - Augmented Social Innovations through Science and Technology",
              style: AppText.l1,
              maxLines: 2,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is HomeLoading || state is HomeInitial) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is HomeLoaded) {
                    return _HomeCard(homeBanner: state.data!);
                  } else {
                    return Center(
                      child: Text(state.error!),
                    );
                  }
                },
              ),
              Space.y2!,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/people.png",
                            height: AppDimensions.normalize(25),
                            width: AppDimensions.normalize(25),
                            fit: BoxFit.fill),
                        Text("3000", style: AppText.h2!.w(6)),
                        Text(
                          "Participants",
                          style: AppText.h3!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/bookmark.png",
                            height: AppDimensions.normalize(25),
                            width: AppDimensions.normalize(25),
                            fit: BoxFit.fill),
                        Text("100", style: AppText.h2!.w(6)),
                        Text(
                          "Pilots",
                          style: AppText.h3!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/earth.png",
                            height: AppDimensions.normalize(25),
                            width: AppDimensions.normalize(25),
                            fit: BoxFit.fill),
                        Text("15", style: AppText.h2!.w(6)),
                        Text(
                          "Countries",
                          style: AppText.h3!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/books.png",
                            height: AppDimensions.normalize(25),
                            width: AppDimensions.normalize(25),
                            fit: BoxFit.fill),
                        Text("5", style: AppText.h2!.w(6)),
                        Text(
                          "Tracks",
                          style: AppText.h3!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text("Why you should join \nYESIST12?", style: AppText.h2b),
              ..._Data.d
                  .map(
                    (e) => _ResoucesTile(
                        title: e['title']!, description: e['description']!),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
