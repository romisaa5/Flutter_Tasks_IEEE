import 'package:flutter/material.dart';
import 'package:todo/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.light(primary: Colors.blue),
        dialogTheme: const DialogTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
