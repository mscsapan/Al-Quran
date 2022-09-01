class SuraName {
  String? suraNo;
  String? suraName;
  String? para;
  String? totalAyat;
  String? engName;

  SuraName(
      {this.suraNo, this.suraName, this.para, this.totalAyat, this.engName});

  SuraName.fromJson(Map<String, dynamic> json) {
    suraNo = json['sura_no'];
    suraName = json['sura_name'];
    para = json['para'];
    totalAyat = json['total_ayat'];
    engName = json['eng_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sura_no'] = suraNo;
    data['sura_name'] = suraName;
    data['para'] = para;
    data['total_ayat'] = totalAyat;
    data['eng_name'] = engName;
    return data;
  }
}
