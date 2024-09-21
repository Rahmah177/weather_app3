import 'package:flutter/material.dart';
import 'package:weather_app3/services/weather_services.dart';

class SearchPage extends StatelessWidget {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('search a city'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: TextField(
            onSubmitted: (data) {
              cityName = data;

              WeatherServices services = WeatherServices();
              services.getWeather(cityName: cityName!);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30, horizontal: 25),
              label: Text('search'),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: "city name",
            ),
          ),
        ),
      ),
    );
  }
}
