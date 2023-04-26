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

  factory Track.fromMap(Map<String, dynamic> map, String imgPath) {
    return Track(
      firstPrize: map['track_1stPrize'] as String,
      secondPrize: map['track_2ndPrize'] as String,
      description: map['track_description'] as String,
      fees: map['track_fees'] as String,
      id: map['track_id'] as int,
      name: map['track_name'] as String,
      rules: map['track_rules'] as String,
      sp: map['track_sp'] as String,
      imgUrl: imgPath,
    );
  }

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
