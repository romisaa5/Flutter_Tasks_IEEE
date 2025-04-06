
import 'package:flutter/material.dart';
import 'package:task2/core/styles.dart';

class CustomBannar extends StatelessWidget {
  const CustomBannar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(
          'assets/images/Small banner.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .25,
        ),
        Opacity(
          opacity: .3,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .25,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Text(
            'Street Clothes',
            style: Styles.textStyle32
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
