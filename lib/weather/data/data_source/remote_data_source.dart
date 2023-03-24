import 'dart:convert';

import 'package:clean_weather_app/weather/core/utils/constance.dart';
import 'package:clean_weather_app/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';
abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountry(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountry(String cityName)async{
    try{
      var response=await Dio().get("${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.apiKey}");
      print(response);
      return WeatherModel.fromJson(response.data);
    }catch(e){
      print(e);
    }
  }
}
