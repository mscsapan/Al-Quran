class ArabicLanguage {
  String? id;
  String? sura;
  String? verseIDAr;
  String? ayat;

  ArabicLanguage({this.id, this.sura, this.verseIDAr, this.ayat});

  ArabicLanguage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sura = json['sura'];
    verseIDAr = json['VerseIDAr'];
    ayat = json['ayat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sura'] = sura;
    data['VerseIDAr'] = verseIDAr;
    data['ayat'] = ayat;
    return data;
  }
}
