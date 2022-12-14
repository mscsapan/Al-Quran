import 'package:al_quran/src/constraints/api_link.dart';
import 'package:http/http.dart' as http;

import '../model/english_language_model.dart';

class EnglishService {
  Uri url = Uri.parse(ApiLink.english);

  Future<List<EnglishLanguage>> getEnglishService() async {
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        List<EnglishLanguage> english = englishLanguageFromJson(response.body);
        return english;
      } else {
        return <EnglishLanguage>[];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
