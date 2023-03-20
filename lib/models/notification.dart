// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Notification {
  final String body;
  final DateTime expiresOn;
  final String title;
  
  Notification({
    required this.body,
    required this.expiresOn,
    required this.title,
  });

  Notification copyWith({
    String? body,
    DateTime? expiresOn,
    String? title,
  }) {
    return Notification(
      body: body ?? this.body,
      expiresOn: expiresOn ?? this.expiresOn,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'expiresOn': expiresOn.millisecondsSinceEpoch,
      'title': title,
    };
  }

  factory Notification.fromMap(Map<String, dynamic> map) {
    return Notification(
      body: map['body'] as String,
      expiresOn: DateTime.fromMillisecondsSinceEpoch(map['expiresOn'] as int),
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Notification.fromJson(String source) => Notification.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Notification(body: $body, expiresOn: $expiresOn, title: $title)';

  @override
  bool operator ==(covariant Notification other) {
    if (identical(this, other)) return true;
  
    return 
      other.body == body &&
      other.expiresOn == expiresOn &&
      other.title == title;
  }

  @override
  int get hashCode => body.hashCode ^ expiresOn.hashCode ^ title.hashCode;
}
