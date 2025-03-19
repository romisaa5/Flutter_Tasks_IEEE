import 'package:flutter/material.dart';
import 'package:task7/custom_appbar.dart';
import 'package:task7/custom_button.dart';
import 'package:task7/custom_favorite_icon.dart';
import 'package:task7/custom_list_colors.dart';
import 'package:task7/custom_number_of_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            Center(
                child: Image.asset(
              'assets/images/chair.png',
              height: 300,
              width: 280,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chair',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 115, 108, 108)),
                ),
                Text(
                  r'$212  ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
            Text(
              'Minimalist Style with Pillow',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
                'A modern, comfortable chair designed to provide both style and functionality. Perfect for your home, office, or any space, it offers excellent support for long hours of sitting. Made with high-quality, durable materials and a sleek, ergonomic design to match any interior decor while ensuring comfort and practicality.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomListColors(),
               CustomNumberOfItems()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  CustomFavoriteIcon()
              ),
              CustomButton()
            ])
          ],
        ),
      ),
    );
  }
}
