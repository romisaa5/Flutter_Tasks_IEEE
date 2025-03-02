import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/pasta.jpg',
            width: double.infinity,
            height: 240,
            fit: BoxFit.fill,
          ),
          Text(
            '  About',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'White Sauce Pasta is a creamy and delicious dish made with pasta, a rich white sauce, and various seasonings. The sauce, also known as Béchamel sauce, is made from butter, flour, and milk, creating a smooth and velvety texture. It is often flavored with garlic, cheese, and herbs to enhance the taste.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Text(
            '  Ingredients',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          customrow(),
          SizedBox(
            height: 10,
          ),
          customrow()
        ],
      ),
    );
  }
}

class customrow extends StatelessWidget {
  const customrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/pasta1.jpg',
                fit: BoxFit.fill,
              ),
            )),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/chicken.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/butter.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/grediant.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
