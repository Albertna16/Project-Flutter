import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("https://api.quran.sutanlab.id/surah");
  var response = await http.get(url);

  print(response.body);
}