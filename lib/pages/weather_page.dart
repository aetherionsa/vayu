import 'package:flutter/material.dart';
import 'package:minimalweather/models/weather_model.dart';
import 'package:minimalweather/services/weather_service.dart';

class Weatherpage extends StatefulWidget {
  const Weatherpage({super.key});

  @override
  State<Weatherpage> createState() => _WeatherpageState();
}

class _WeatherpageState extends State<Weatherpage> {

  // api key
  final _weatherService = WeatherService('a84ee66001b75f3989429ab1bc73e2cb');
  Weather? _weather;

  // fetch weather
  _fetchWeather() async{
    // get the current city
    String cityName = await _weatherService.getCurrentCity();


    // get weather for city
    try{
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      }); 
    }

    // any error
    catch (e) {
      print(e);
    }
  }

  // weather animation

  // init state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // fetch weather on startup
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          // city name
          Text(_weather?.cityName ?? "loading city.."),
        
          // temperature
          Text('${_weather?.temperature.round()}°C')
        
        ],
        ),
      ),
    );
  }
}