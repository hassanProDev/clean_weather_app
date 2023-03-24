import 'package:clean_weather_app/weather/data/data_source/remote_data_source.dart';
import 'package:clean_weather_app/weather/data/repository/weather_repository.dart';
import 'package:clean_weather_app/weather/domain/entities/weather.dart';
import 'package:clean_weather_app/weather/domain/repository/base_weather_repository.dart';
import 'package:clean_weather_app/weather/domain/use_cases/get_weather_by_country.dart';
import 'package:flutter/material.dart';


void main()async{
  BaseRemoteDataSource baseRemoteDataSource=RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository=WeatherRepository(baseRemoteDataSource);
  Weather weather=await GetWeatherByCountry(baseWeatherRepository).execute("giza");
  print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
