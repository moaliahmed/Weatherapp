import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/blocs/cubit/weather_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var cubit =WeatherCubit.get(context);
        return Scaffold(
      body: Center(
        child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your ',
                          border: OutlineInputBorder(), labelText: ''),
                          
                          controller:cubit.textSearch ,
                          
                    ),
      ),
    );
      },
    );
  }
}