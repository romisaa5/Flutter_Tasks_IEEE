import 'package:bmi/constants/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
