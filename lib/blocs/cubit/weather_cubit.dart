import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherapp/models/weather_response.dart';
import 'package:weatherapp/services/dio_helper.dart';
import 'package:weatherapp/services/dio_helper_keys.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  static WeatherCubit get(context) => BlocProvider.of(context);

  TextEditingController textSearch = TextEditingController();
  WeatherResonse? weatherResonse;
  
  getdate() {
    emit(WeatherGetLoding());
    DioHelper.getData(
            url: 'weather',
            query: {'appid': apikey.weatherkey, 'q': textSearch.text.toString()})
        .then((value) {
      emit(WeatherGetSuccess());
      weatherResonse = WeatherResonse.fromJson(value.data);
      
      
    }).catchError((e) {
      emit(WeatherGetError());
      print('Excibtion $e');
    });
  }
String photoUrl(){
   if (weatherResonse!.main!.temp!.toInt()-273 >=20)
        {
          return 'lib/assets/summer.jpeg';
        }
        else{
           return 'lib/assets/winter.jpg';
        }
}
 
}
