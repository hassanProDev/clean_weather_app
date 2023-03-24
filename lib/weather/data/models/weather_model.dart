import 'package:clean_weather_app/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.pressure,
    super.name,
    super.main,
    super.description,
  );

  WeatherModel.fromJson(Map<String, dynamic> json)
      : this(
          json["id"],
          json["main"]["pressure"],
          json["name"],
          json["weather"][0]["main"],
          json["weather"][0]["description"],
        );
}
