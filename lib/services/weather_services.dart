import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherServices {
  String baseUrl = 'api.openweathermap.org/data/2.5';
  String apiKey = '01608313a89c14b85b8c4d700427e6d2';
  void getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        '$baseUrl/forecast?q=$cityName&appid={01608313a89c14b85b8c4d700427e6d2}');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

  String date = data[' ']
  }
}
