import 'package:flutter/cupertino.dart';
import 'package:weatherapp/services/dio_helper.dart';
import 'package:weatherapp/src/app_root.dart';

void main(List<String> args) {
 DioHelper.init();
  runApp(AppRoot());
}