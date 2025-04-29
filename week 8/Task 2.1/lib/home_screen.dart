import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallary', style: TextStyle(color: Color.fromARGB(255, 131, 129, 129))),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7,
          childAspectRatio: 0.8,
        ),
        itemCount: 20,
        physics: const BouncingScrollPhysics(),

        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/img${(index % 3) + 1}.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
