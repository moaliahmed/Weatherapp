import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/blocs/cubit/weather_cubit.dart';
import 'package:weatherapp/screens/weather_Degree.dart';

import 'package:weatherapp/utils/app_navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);
        return Scaffold(
          backgroundColor: Color(0xffeee4ee),
          appBar: AppBar(
            backgroundColor: Color(0xffeee4ee),
            elevation: 0,
            title: Center(
                child: Text(
              'W e a t h e r.com'.toUpperCase(),
              style: TextStyle(color: Colors.black, fontSize: 32),
            )),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://img.freepik.com/free-vector/simple-cloud-logo-vector-technology-icon-design_53876-169288.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your ',
                          border: OutlineInputBorder(),
                          labelText: ''),
                      controller: cubit.textSearch,
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffeee4ee)),
                          elevation: MaterialStateProperty.all(10)),
                      onPressed: () {
                        AppNavigator.appNavigator(context, false, WeatherDegree());
                        cubit.getdate();
                      },
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
