import 'package:auth_screens/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AuthScreens());
}

class AuthScreens extends StatelessWidget {
  const AuthScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginView());
  }
}
