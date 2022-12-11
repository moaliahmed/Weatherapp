import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matcher/matcher.dart';
import 'package:weatherapp/blocs/cubit/weather_cubit.dart';
import 'package:weatherapp/models/weather_response.dart';

class WeatherDegree extends StatelessWidget {
  const WeatherDegree({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);
            
       return cubit.weatherResonse ==null ?
             Center(child: CircularProgressIndicator()) :
       Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${cubit.photoUrl()}'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    cubit.weatherResonse!.name.toString(),
                    style: TextStyle(fontSize: 53, color: Colors.white),
                  ),
                  Text('${ cubit.weatherResonse!.main!.temp!.toInt()-273}',
                      style: TextStyle(fontSize: 63, color: Colors.white)),
                  Text(
                    cubit.weatherResonse!.weather![0].description.toString(),
                    style: TextStyle(fontSize: 53,color: Colors.white),
                  ),
                  SizedBox(height: 440,),
                  Container(
                    
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(border:Border.all(color: Colors.white,width: 3),borderRadius: BorderRadius.circular(12),color: Colors.indigo.withOpacity(0.3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('Min Temp',style: TextStyle(color: Colors.white,fontSize: 18),),
                            Text('${cubit.weatherResonse!.main!.tempMin!.toInt()-273}',style: TextStyle(color: Colors.white,fontSize: 18))
                          ],
                        ),
                     
                        Column(
                          children: [
                            Text('Wind Speed',style: TextStyle(color: Colors.white,fontSize: 18)),
                            Text(cubit.weatherResonse!.wind!.speed.toString(),style: TextStyle(color: Colors.white,fontSize: 18))
                          ],
                        ),
                     
                        Column(
                          children: [
                            Text('Min Temp',style: TextStyle(color: Colors.white,fontSize: 18)),
                            Text('${cubit.weatherResonse!.main!.tempMin!.toInt()-273} ',style: TextStyle(color: Colors.white,fontSize: 18))
                          ],
                        )
                     
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
     ,);
      },
    );
  }
}
