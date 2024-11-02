import 'package:http/http.dart';
import 'dart:convert';

class Worker {
  late double temp=0;
  late String feels_like;
  late String pressure;
  late String humidity;
  late String windSpeed;
  late String main;
  late String description;

  Future<void> getData() async {
    final Uri apiUrl = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=19.0968&lon=72.8517&appid=2fabe60e53087033bbd507cf4aa0b8e2");
    Response response = await get(apiUrl);
    Map data = jsonDecode(response.body);

    //Getting temperature
    Map temp_data = data['main'];
    temp = temp_data['temp'] - 273.15;
  }
}