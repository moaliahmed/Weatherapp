part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}



class WeatherGetSuccess  extends WeatherState {}
class WeatherGetError extends WeatherState {}
class WeatherGetLoding extends WeatherState {}
