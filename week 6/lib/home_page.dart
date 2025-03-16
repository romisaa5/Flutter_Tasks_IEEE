import 'package:flutter/material.dart';
import 'package:task6/custom_row_widget.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});
  static const List<String> imageUrls = [
    'assets/images/pasta1.jpg',
    'assets/images/chicken.jpg',
    'assets/images/butter.jpg',
    'assets/images/grediant.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            CustomRow(
              imageUrls: imageUrls
            ),
            SizedBox(
              height: 10,
            ),
            CustomRow(
              imageUrls: imageUrls
            ),
            CustomRow(
              imageUrls: imageUrls
            ),
          ],
        ),
      ),
    );
  }
}
