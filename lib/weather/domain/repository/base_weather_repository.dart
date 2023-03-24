import 'package:clean_weather_app/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByCityName(String cityName);
}