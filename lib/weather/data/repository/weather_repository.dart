import 'package:clean_weather_app/weather/data/data_source/remote_data_source.dart';
import 'package:clean_weather_app/weather/domain/entities/weather.dart';
import 'package:clean_weather_app/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCountry(cityName))!;
  }
}
