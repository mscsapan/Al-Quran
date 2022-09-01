import 'dart:convert';

import 'package:al_quran/src/constraints/api_link.dart';
import 'package:al_quran/src/data/model/bengali_language_model.dart';
import 'package:http/http.dart' as http;

class BengaliService {
  Uri url = Uri.parse(ApiLink.bengali);

  Future<List<BengaliLanguage>> getBengaliLanguage() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        List<dynamic> bengali = json.decode(utf8.decode(response.bodyBytes));
        return bengali.map((ban) => BengaliLanguage.fromJson(ban)).toList();
      } else {
        return <BengaliLanguage>[];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
