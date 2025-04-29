import 'package:bmi/views/home_view.dart';
import 'package:bmi/views/result_view.dart';
import 'package:bmi/views/splash_view.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => SplashView(),
  '/home': (context) => HomeView(),
  '/result': (context) => ResultView(),
};
