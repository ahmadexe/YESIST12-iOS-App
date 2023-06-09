// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Place {
  final String description;
  final String id;
  final String image1;
  final double lat;
  final double lng;
  final String location;
  final String name;
  final double stars;
  Place({
    required this.description,
    required this.id,
    required this.image1,
    required this.lat,
    required this.lng,
    required this.location,
    required this.name,
    required this.stars,
  });

  Place copyWith({
    String? description,
    String? id,
    String? image1,
    double? lat,
    double? lng,
    String? location,
    String? name,
    double? stars,
  }) {
    return Place(
      description: description ?? this.description,
      id: id ?? this.id,
      image1: image1 ?? this.image1,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      location: location ?? this.location,
      name: name ?? this.name,
      stars: stars ?? this.stars,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'image1': image1,
      'lat': lat,
      'lng': lng,
      'location': location,
      'name': name,
      'stars': stars,
    };
  }

  factory Place.fromMap(Map<String, dynamic> map) {
    GeoPoint geo = map['latlang'] as GeoPoint;
    final lat = geo.latitude;
    final lng = geo.longitude;
    return Place(
      description: map['description'] as String,
      id: map['id'] as String,
      image1: map['image1'] as String,
      lat: lat,
      lng: lng,
      location: map['location'] as String,
      name: map['name'] as String,
      stars: map['stars'].toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) =>
      Place.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Place(description: $description, id: $id, image1: $image1, lat: $lat, lng: $lng, location: $location, name: $name, stars: $stars)';
  }

  @override
  bool operator ==(covariant Place other) {
    if (identical(this, other)) return true;

    return other.description == description &&
        other.id == id &&
        other.image1 == image1 &&
        other.lat == lat &&
        other.lng == lng &&
        other.location == location &&
        other.name == name &&
        other.stars == stars;
  }

  @override
  int get hashCode {
    return description.hashCode ^
        id.hashCode ^
        image1.hashCode ^
        lat.hashCode ^
        lng.hashCode ^
        location.hashCode ^
        name.hashCode ^
        stars.hashCode;
  }
}
