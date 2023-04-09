import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:yesist_ios_app/configs/configs.dart';
import 'package:yesist_ios_app/models/timeline.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: AppDimensions.normalize(75),
              color: AppTheme.c!.primary,
            ),
          ),
          Positioned(
            top: AppDimensions.normalize(20),
            left: AppDimensions.normalize(10),
            child: Text(
              "Timeline",
              style: AppText.h1!.w(5).copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            top: AppDimensions.normalize(50),
            right: AppDimensions.normalize(6),
            child: Text(
              DateFormat('jm').format(_selectedDate),
              style: AppText.b1!.copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            top: AppDimensions.normalize(60),
            right: AppDimensions.normalize(6),
            child: Text(
              _selectedDate.timeZoneName,
              style: AppText.b2!.copyWith(color: Colors.green[300]),
            ),
          ),
          Positioned(
            top: AppDimensions.normalize(50),
            left: AppDimensions.normalize(10),
            right: AppDimensions.normalize(10),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.timeline
                  .where(
                    (element) {
                      return element.startTime
                              .difference(_selectedDate)
                              .inDays <=
                          0;
                    },
                  )
                  .toList()
                  .length,
              itemBuilder: (context, index) {
                return _TimelineCard(timeline: widget.timeline[index]);
              },
            ),
          ),
           Positioned(
            top: AppDimensions.normalize(55),
            left: AppDimensions.normalize(5),
            child: SizedBox(
              width: AppDimensions.normalize(70),
              child: ExpansionTile(
                maintainState: true,
                title: GestureDetector(
                  onTap: () {
                    showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Select Date"),
                    content: FormBuilderDateTimePicker(
                      name: 'date',
                      initialDate: DateTime.now(),
                      initialValue: DateTime.now(),
                      inputType: InputType.date,
                      format: DateFormat("MM-dd-yyyy"),
                      decoration: const InputDecoration(labelText: "Date"),
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
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                children: [
                  // FormBuilderDateTimePicker(
                  //   name: 'date',
                  //   initialDate: DateTime.now(),
                  //   initialValue: DateTime.now(),
                  //   inputType: InputType.date,
                  //   format: DateFormat("MM-dd-yyyy"),
                  //   decoration: const InputDecoration(labelText: "Date"),
                  //   initialEntryMode: DatePickerEntryMode.calendar,
                  //   onChanged: (value) {
                  //     if (value != null) {
                  //       setState(() {
                  //         _selectedDate = value;
                  //       });
                  //     }
                  //   },
                  // ),
                ],
              ),
            ),
                   ),
        ],
      ),
    );
  }
}
