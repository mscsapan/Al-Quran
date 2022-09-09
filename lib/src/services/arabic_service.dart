import 'dart:convert';

import 'package:al_quran/src/constraints/api_link.dart';
import 'package:http/http.dart' as http;

import '../model/arabic_language_model.dart';

class ArabicService {
  Uri url = Uri.parse(ApiLink.arabic);

  Future<List<ArabicLanguage>> getArabicLanguage() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        List<dynamic> arabic = json.decode(utf8.decode(response.bodyBytes));
        return arabic.map((ara) => ArabicLanguage.fromJson(ara)).toList();
      } else {
        return <ArabicLanguage>[];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
