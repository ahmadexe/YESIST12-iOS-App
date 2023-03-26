// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Accomodation {
  final String address;
  final String name;
  final String image;
  final String goLink;
  Accomodation({
    required this.address,
    required this.name,
    required this.image,
    required this.goLink,
  });

  Accomodation copyWith({
    String? address,
    String? name,
    String? image,
    String? goLink,
  }) {
    return Accomodation(
      address: address ?? this.address,
      name: name ?? this.name,
      image: image ?? this.image,
      goLink: goLink ?? this.goLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'name': name,
      'image': image,
      'goLink': goLink,
    };
  }

  factory Accomodation.fromMap(Map<String, dynamic> map) {
    return Accomodation(
      address: map['address'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      goLink: map['goLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Accomodation.fromJson(String source) => Accomodation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Accomodation(address: $address, name: $name, image: $image, goLink: $goLink)';
  }

  @override
  bool operator ==(covariant Accomodation other) {
    if (identical(this, other)) return true;
  
    return 
      other.address == address &&
      other.name == name &&
      other.image == image &&
      other.goLink == goLink;
  }

  @override
  int get hashCode {
    return address.hashCode ^
      name.hashCode ^
      image.hashCode ^
      goLink.hashCode;
  }
}
