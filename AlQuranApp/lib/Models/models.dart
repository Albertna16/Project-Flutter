import 'dart:convert';
import 'package:alquranapp/Models/detail_surah.dart';
import 'package:alquranapp/Models/surah.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah");
  var res = await http.get(url);

  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  // data dari API data mentahan dirubah menjadi data models
  Surah surahAlFatihah = Surah.fromJson(data[0]);

  Uri urlAlFatihah =
      Uri.parse("https://api.quran.gading.dev/surah/${surahAlFatihah.number}");
  var resAlFatihah = await http.get(urlAlFatihah);

  Map<String, dynamic> dataAlfatihah =
      (json.decode(res.body) as Map<String, dynamic>)["data"];

  // data dari API data mentahan dirubah menjadi data models
  DetailSurah alfatihah = DetailSurah.fromJson(dataAlfatihah);
}
