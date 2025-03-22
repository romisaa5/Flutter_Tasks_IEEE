import 'package:beginner_project_screen/custom_top_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          spacing: 15,
          children: [
           CustomTopSection()
          ],
        ),
      ),
    );
  }
}
