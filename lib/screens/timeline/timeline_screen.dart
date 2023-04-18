import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:yesist_ios_app/blocs/timeline/bloc/timeline_bloc.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/models/timeline.dart';
import 'package:yesist_ios_app/screens/notifications/notifications_screen.dart';
import 'package:yesist_ios_app/static/constants.dart';

part 'widgets/_timeline_card.dart';

// ignore: must_be_immutable
class TimelineScreen extends StatefulWidget {
  final List<TimelineModel> timeline = [
    TimelineModel(
      title: 'Timelline model 1',
      date: DateTime.now(),
      description: 'Description',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
      eventUrl: '',
      speakers: ['Ahmad'],
    ),
    TimelineModel(
      title: 'Timelline model 1',
      date: DateTime.now(),
      description: 'Description',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
      eventUrl: '',
      speakers: ['Ahmad'],
    ),
    TimelineModel(
      title: 'Timelline model 1',
      date: DateTime.now(),
      description: 'Description',
      startTime: DateTime.now(),
      endTime: DateTime.now(),
      eventUrl: '',
      speakers: ['Ahmad'],
    ),
  ];
  TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    final timelineBloc = BlocProvider.of<TimelineBloc>(context);
    timelineBloc.add(GetTimeLines());
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
                Text(
                  "Timeline",
                  style: AppText.h1!.w(4),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const NotificationsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.notifications_none),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Select Date"),
                          content: FormBuilderDateTimePicker(
                            name: 'date',
                            initialDate: DateTime.now(),
                            initialValue: DateTime.now(),
                            inputType: InputType.date,
                            format: DateFormat("MM-dd-yyyy"),
                            decoration:
                                const InputDecoration(labelText: "Date"),
                            initialEntryMode: DatePickerEntryMode.calendar,
                            onChanged: (value) {
                              if (value != null) {
                                Navigator.of(context).pop();
                                setState(() {
                                  _selectedDate = value;
                                });
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    DateFormat('MMMMd').format(_selectedDate),
                    style: AppText.b1!.copyWith(color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      DateFormat('jm').format(_selectedDate),
                      style: AppText.b1!.copyWith(color: Colors.white),
                    ),
                    Text(
                      _selectedDate.timeZoneName,
                      style: AppText.b2!.copyWith(color: Colors.green[300]),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: BlocBuilder<TimelineBloc, TimelineState>(
        builder: (context, state) {
          if (state is TimelineLoading || state is TimelineInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TimelineLoaded) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.data!.length,
                itemBuilder: (context, index) {
                  return _TimelineCard(timeline: state.data![index]);
                },
              ),
            );
          } else {
            return Center(child: Text(state.error!));
          }
        },
      ),
    );
  }
}
