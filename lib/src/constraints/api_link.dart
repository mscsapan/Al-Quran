import 'language_code.dart';

class ApiLink {
  static const String arabic =
      'https://raw.githubusercontent.com/alQuranBD/Database/master/json/ayats_${LanguageCode.arabic}.json';
  static const String bengali =
      'https://raw.githubusercontent.com/alQuranBD/Database/master/json/ayats_${LanguageCode.bengali}.json';
  static const String english =
      'https://raw.githubusercontent.com/alQuranBD/Database/master/json/ayats_${LanguageCode.english}.json';
  static const String suraName =
      'https://raw.githubusercontent.com/alQuranBD/Database/master/json/${LanguageCode.suraName}.json';
}
