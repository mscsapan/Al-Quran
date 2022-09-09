import 'dart:convert';
import 'package:al_quran/src/constraints/api_link.dart';
import 'package:http/http.dart' as http;
import '../model/sura_name_model.dart';

class SuraNameService {
  Uri url = Uri.parse(ApiLink.suraName);

  Future<List<SuraName>> getSuraName() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        List<dynamic> suraName = json.decode(utf8.decode(response.bodyBytes));
        return suraName.map((sura) => SuraName.fromJson(sura)).toList();
      } else {
        return <SuraName>[];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
