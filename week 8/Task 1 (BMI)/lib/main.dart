
import 'package:bmiapp/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIAPP());
}

class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
