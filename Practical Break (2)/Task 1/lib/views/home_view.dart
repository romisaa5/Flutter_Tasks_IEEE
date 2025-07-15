import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/widgets/custom_appbar.dart';
import 'package:task1/widgets/details_section.dart';
import 'package:task1/widgets/rate_section.dart';
import 'package:task1/widgets/t_shirt_section.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            SizedBox(height: 15),
            TshirtSection(),
            Text(
              'Belgium Euro',
              style: TextStyle(
                fontFamily: 'font1',
                fontSize: 24,
                color: kprimarycolor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '20/21 away by adidas',
              style: TextStyle(
                fontFamily: 'font1',
                fontSize: 15,
                color: ksecondrycolor,
              ),
            ),
            RateSection(),
            SizedBox(height: 2),
            DetailsSection(),
          ],
        ),
      ),
    );
  }
}
