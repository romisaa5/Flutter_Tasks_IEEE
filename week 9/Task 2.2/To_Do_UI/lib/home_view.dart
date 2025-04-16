import 'package:flutter/material.dart';
import 'package:todo/widgets/task_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taskly',style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(itemBuilder: 
        (context, index) {
          return const TaskCard();
        },
        itemCount: 10,
      ),
    );
  }
}
