// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HomeBanner {
  final String cardBtnText;
  final String cardBtnUrl;
  final String cardHeader;
  final String cardDescription;

  const HomeBanner({
    required this.cardBtnText,
    required this.cardBtnUrl,
    required this.cardHeader,
    required this.cardDescription,
  });

  HomeBanner copyWith({
    String? cardBtnText,
    String? cardBtnUrl,
    String? cardHeader,
    String? cardDescription,
  }) {
    return HomeBanner(
      cardBtnText: cardBtnText ?? this.cardBtnText,
      cardBtnUrl: cardBtnUrl ?? this.cardBtnUrl,
      cardHeader: cardHeader ?? this.cardHeader,
      cardDescription: cardDescription ?? this.cardDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardBtnText': cardBtnText,
      'cardBtnUrl': cardBtnUrl,
      'cardHeader': cardHeader,
      'cardDescription': cardDescription,
    };
  }

  factory HomeBanner.fromMap(Map<String, dynamic> map) {
    return HomeBanner(
      cardBtnText: map['card_button_text'] as String,
      cardBtnUrl: map['card_button_url'] as String,
      cardHeader: map['card_header'] as String,
      cardDescription: map['card_description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeBanner.fromJson(String source) => HomeBanner.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HomeBanner(cardBtnText: $cardBtnText, cardBtnUrl: $cardBtnUrl, cardHeader: $cardHeader, cardDescription: $cardDescription)';
  }

  @override
  bool operator ==(covariant HomeBanner other) {
    if (identical(this, other)) return true;
  
    return 
      other.cardBtnText == cardBtnText &&
      other.cardBtnUrl == cardBtnUrl &&
      other.cardHeader == cardHeader &&
      other.cardDescription == cardDescription;
  }

  @override
  int get hashCode {
    return cardBtnText.hashCode ^
      cardBtnUrl.hashCode ^
      cardHeader.hashCode ^
      cardDescription.hashCode;
  }
}
