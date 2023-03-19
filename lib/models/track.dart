// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Track {
  final String firstPrize;
  final String secondPrize;
  final String description;
  final String fees;
  final int id;
  final String name;
  final String rules;
  final String sp;
  final String imgUrl;
  Track({
    required this.firstPrize,
    required this.secondPrize,
    required this.description,
    required this.fees,
    required this.id,
    required this.name,
    required this.rules,
    required this.sp,
    required this.imgUrl,
  });
  

  Track copyWith({
    String? firstPrize,
    String? secondPrize,
    String? description,
    String? fees,
    int? id,
    String? name,
    String? rules,
    String? sp,
    String? imgUrl,
  }) {
    return Track(
      firstPrize: firstPrize ?? this.firstPrize,
      secondPrize: secondPrize ?? this.secondPrize,
      description: description ?? this.description,
      fees: fees ?? this.fees,
      id: id ?? this.id,
      name: name ?? this.name,
      rules: rules ?? this.rules,
      sp: sp ?? this.sp,
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstPrize': firstPrize,
      'secondPrize': secondPrize,
      'description': description,
      'fees': fees,
      'id': id,
      'name': name,
      'rules': rules,
      'sp': sp,
      'imgUrl': imgUrl,
    };
  }

  factory Track.fromMap(Map<String, dynamic> map) {
    return Track(
      firstPrize: map['firstPrize'] as String,
      secondPrize: map['secondPrize'] as String,
      description: map['description'] as String,
      fees: map['fees'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      rules: map['rules'] as String,
      sp: map['sp'] as String,
      imgUrl: map['imgUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Track.fromJson(String source) => Track.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Track(firstPrize: $firstPrize, secondPrize: $secondPrize, description: $description, fees: $fees, id: $id, name: $name, rules: $rules, sp: $sp, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(covariant Track other) {
    if (identical(this, other)) return true;
  
    return 
      other.firstPrize == firstPrize &&
      other.secondPrize == secondPrize &&
      other.description == description &&
      other.fees == fees &&
      other.id == id &&
      other.name == name &&
      other.rules == rules &&
      other.sp == sp &&
      other.imgUrl == imgUrl;
  }

  @override
  int get hashCode {
    return firstPrize.hashCode ^
      secondPrize.hashCode ^
      description.hashCode ^
      fees.hashCode ^
      id.hashCode ^
      name.hashCode ^
      rules.hashCode ^
      sp.hashCode ^
      imgUrl.hashCode;
  }
}
