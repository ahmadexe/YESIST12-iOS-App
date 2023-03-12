// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Timezone {
  final String title;
  final DateTime date;
  final String description;
  final DateTime start_time;
  final DateTime end_time;
  final String event_url;
  final List<String> speakers;
  Timezone({
    required this.title,
    required this.date,
    required this.description,
    required this.start_time,
    required this.end_time,
    required this.event_url,
    required this.speakers,
  });

  Timezone copyWith({
    String? title,
    DateTime? date,
    String? description,
    DateTime? start_time,
    DateTime? end_time,
    String? event_url,
    List<String>? speakers,
  }) {
    return Timezone(
      title: title ?? this.title,
      date: date ?? this.date,
      description: description ?? this.description,
      start_time: start_time ?? this.start_time,
      end_time: end_time ?? this.end_time,
      event_url: event_url ?? this.event_url,
      speakers: speakers ?? this.speakers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'date': date.millisecondsSinceEpoch,
      'description': description,
      'start_time': start_time.millisecondsSinceEpoch,
      'end_time': end_time.millisecondsSinceEpoch,
      'event_url': event_url,
      'speakers': speakers,
    };
  }

  factory Timezone.fromMap(Map<String, dynamic> map) {
    return Timezone(
      title: map['title'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      description: map['description'] as String,
      start_time: DateTime.parse(map['start_time']),
      end_time: DateTime.parse(map['end_time']),
      event_url: map['event_url'] as String,
      speakers: List<String>.from((map['speakers'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Timezone.fromJson(String source) => Timezone.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Timezone(title: $title, date: $date, description: $description, start_time: $start_time, end_time: $end_time, event_url: $event_url, speakers: $speakers)';
  }

  @override
  bool operator ==(covariant Timezone other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.date == date &&
      other.description == description &&
      other.start_time == start_time &&
      other.end_time == end_time &&
      other.event_url == event_url &&
      listEquals(other.speakers, speakers);
  }

  @override
  int get hashCode {
    return title.hashCode ^
      date.hashCode ^
      description.hashCode ^
      start_time.hashCode ^
      end_time.hashCode ^
      event_url.hashCode ^
      speakers.hashCode;
  }
}
