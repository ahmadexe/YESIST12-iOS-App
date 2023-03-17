// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class TimelineModel {
  final String title;
  final DateTime date;
  final String description;
  final DateTime startTime;
  final DateTime endTime;
  final String eventUrl;
  final List<String> speakers;
  TimelineModel({
    required this.title,
    required this.date,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.eventUrl,
    required this.speakers,
  });
  

  TimelineModel copyWith({
    String? title,
    DateTime? date,
    String? description,
    DateTime? startTime,
    DateTime? endTime,
    String? eventUrl,
    List<String>? speakers,
  }) {
    return TimelineModel(
      title: title ?? this.title,
      date: date ?? this.date,
      description: description ?? this.description,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      eventUrl: eventUrl ?? this.eventUrl,
      speakers: speakers ?? this.speakers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'date': date.millisecondsSinceEpoch,
      'description': description,
      'startTime': startTime.millisecondsSinceEpoch,
      'endTime': endTime.millisecondsSinceEpoch,
      'eventUrl': eventUrl,
      'speakers': speakers,
    };
  }

  factory TimelineModel.fromMap(Map<String, dynamic> map) {
    return TimelineModel(
      title: map['title'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      description: map['description'] as String,
      startTime: DateTime.fromMillisecondsSinceEpoch(map['startTime'] as int),
      endTime: DateTime.fromMillisecondsSinceEpoch(map['endTime'] as int),
      eventUrl: map['eventUrl'] as String,
      speakers: List<String>.from((map['speakers'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory TimelineModel.fromJson(String source) => TimelineModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TimelineModel(title: $title, date: $date, description: $description, startTime: $startTime, endTime: $endTime, eventUrl: $eventUrl, speakers: $speakers)';
  }

  @override
  bool operator ==(covariant TimelineModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.date == date &&
      other.description == description &&
      other.startTime == startTime &&
      other.endTime == endTime &&
      other.eventUrl == eventUrl &&
      listEquals(other.speakers, speakers);
  }

  @override
  int get hashCode {
    return title.hashCode ^
      date.hashCode ^
      description.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      eventUrl.hashCode ^
      speakers.hashCode;
  }

  bool isLive() {
    final now = DateTime.now();
    return now.difference(startTime).inMinutes < 0 && now.difference(endTime).inMinutes > 0;
  }

  bool isCompleted() {
    final now = DateTime.now();
    return now.difference(endTime).inMinutes > 0;
  }
}
