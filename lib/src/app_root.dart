
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/blocs/cubit/weather_cubit.dart';
import 'package:weatherapp/screens/home_screen.dart';
import 'package:weatherapp/screens/weather_Degree.dart';


class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WeatherCubit(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData() ,
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
