import 'dart:convert';

List<EnglishLanguage> englishLanguageFromJson(String str) =>
    List<EnglishLanguage>.from(
        json.decode(str).map((x) => EnglishLanguage.fromJson(x)));

String englishLanguageToJson(List<EnglishLanguage> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EnglishLanguage {
  EnglishLanguage({
    this.id,
    this.sura,
    this.aya,
    this.text,
  });

  String? id;
  String? sura;
  String? aya;
  String? text;

  factory EnglishLanguage.fromJson(Map<String, dynamic> json) =>
      EnglishLanguage(
        id: json["id"],
        sura: json["sura"],
        aya: json["aya"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sura": sura,
        "aya": aya,
        "text": text,
      };
}
