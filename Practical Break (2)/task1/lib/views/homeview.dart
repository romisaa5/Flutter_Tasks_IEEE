import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/views/widgets/custom_appbar.dart';
import 'package:task1/views/widgets/details_section.dart';
import 'package:task1/views/widgets/rate_section.dart';
import 'package:task1/views/widgets/t_shirt_section.dart';

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
          SizedBox(
            height: 15,
          ),
          T_shirtSection(),
          Text(
            'Belgium Euro',
            style: TextStyle(
                fontFamily: 'font1', fontSize: 24, color: Kprimarycolor,fontWeight: FontWeight.w700),
          ),
          Text(
            '20/21 away by adidas',
            style: TextStyle(
                fontFamily: 'font1', fontSize: 15, color: Ksecondrycolor),
          ),
          RateSection(),
          SizedBox(
            height: 2,
          ),
          DetailsSection(),
        ],
      ),
    ));
  }
}
