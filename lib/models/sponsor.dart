// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Sponsor {
  final int id;
  final String imageUrl;
  final String url;

  Sponsor({
    required this.id,
    required this.imageUrl,
    required this.url,
  });
  

  Sponsor copyWith({
    int? id,
    String? imageUrl,
    String? url,
  }) {
    return Sponsor(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageUrl': imageUrl,
      'url': url,
    };
  }

  factory Sponsor.fromMap(Map<String, dynamic> map) {
    return Sponsor(
      id: map['ID'] as int,
      imageUrl: map['Image'] as String,
      url: map['URL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sponsor.fromJson(String source) => Sponsor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Sponsor(id: $id, imageUrl: $imageUrl, url: $url)';

  @override
  bool operator ==(covariant Sponsor other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.imageUrl == imageUrl &&
      other.url == url;
  }

  @override
  int get hashCode => id.hashCode ^ imageUrl.hashCode ^ url.hashCode;
}
