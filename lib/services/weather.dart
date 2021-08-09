import 'package:weather_daily/services/location.dart';

import 'api_key.dart';
import 'networking.dart';

class WeatherModel {
  Future<dynamic> getWeatherData() async {
    Location location = Location();

    // String cityUrl =
    //     "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric";
    //
    // NetworkHelper cityNetworkHelper = NetworkHelper(cityUrl);
    //
    // var cityWeatherData = cityNetworkHelper.getData();

    await location.getCurrentLocation();
    // latitude = location.latitude;
    // longitude = location.longitude;
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric';

    NetworkHelper networkHelper = NetworkHelper(url);

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }
}
