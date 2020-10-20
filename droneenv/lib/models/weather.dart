
class Wheather {

  String _description;
  String _icon;
  double _temperature;
  double _feelsLike;
  double _tempMin;
  double _tempMax;
  double _humidity;
  double _visibility;
  double _windSpeed;
  double _dirWindDegrees;
  double _clouds;
  String _locationName;
  DateTime _dateTime;

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get icon => _icon;

  DateTime get dateTime => _dateTime;

  set dateTime(DateTime value) {
    _dateTime = value;
  }

  String get locationName => _locationName;

  set locationName(String value) {
    _locationName = value;
  }

  double get clouds => _clouds;

  set clouds(double value) {
    _clouds = value;
  }


  double get dirWindDegrees => _dirWindDegrees;

  set dirWindDegrees(double value) {
    _dirWindDegrees = value;
  }

  double get windSpeed => _windSpeed;

  set windSpeed(double value) {
    _windSpeed = value;
  }

  double get visibility => _visibility;

  set visibility(double value) {
    _visibility = value;
  }

  double get humidity => _humidity;

  set humidity(double value) {
    _humidity = value;
  }

  double get tempMax => _tempMax;

  set tempMax(double value) {
    _tempMax = value;
  }

  double get tempMin => _tempMin;

  set tempMin(double value) {
    _tempMin = value;
  }

  double get feelsLike => _feelsLike;

  set feelsLike(double value) {
    _feelsLike = value;
  }

  double get temperature => _temperature;

  set temperature(double value) {
    _temperature = value;
  }

  set icon(String value) {
    _icon = value;
  }


}