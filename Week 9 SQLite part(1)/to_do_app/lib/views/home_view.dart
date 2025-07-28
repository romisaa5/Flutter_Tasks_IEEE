import 'package:flutter/material.dart';
import 'package:todo/widgets/tasker_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(children: [TaskerHeader(),]),
    );
  }
}
