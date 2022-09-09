class BengaliLanguage {
  String? id;
  String? sura;
  String? aya;
  String? text;

  BengaliLanguage({this.id, this.sura, this.aya, this.text});

  BengaliLanguage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sura = json['sura'];
    aya = json['aya'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sura'] = sura;
    data['aya'] = aya;
    data['text'] = text;
    return data;
  }
}
