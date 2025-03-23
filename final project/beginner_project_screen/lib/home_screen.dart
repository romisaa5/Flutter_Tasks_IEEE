import 'package:beginner_project_screen/constant.dart';
import 'package:beginner_project_screen/widgets/custom_button.dart';
import 'package:beginner_project_screen/widgets/custom_color_items.dart';
import 'package:beginner_project_screen/widgets/custom_rate.dart';
import 'package:beginner_project_screen/widgets/custom_top_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          spacing: 25,
          children: [
            CustomTopSection(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                spacing: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sony WH-1000XM4',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomRate(),
                    ],
                  ),
                  Text(
                    'Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone',
                    style: TextStyle(fontSize: 14),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 242, 229, 229),
                      ),
                      child: Icon(Icons.article_outlined, color: kPrimaryColor),
                    ),
                    title: Text(
                      'Product Specifications',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(indent: 30, endIndent: 30),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 242, 229, 229),
                      ),
                      child: Icon(Icons.palette_outlined, color: kPrimaryColor),
                    ),
                    title: Text(
                      'Colors',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: SizedBox(width: 120, child: CustomColorItems()),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: r'$349',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: '.99',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      CustomButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
