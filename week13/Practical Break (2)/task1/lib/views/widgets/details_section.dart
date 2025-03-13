import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/views/widgets/custom_row_details.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Details',
              style: TextStyle(
                  fontFamily: 'font1', fontSize: 14, color: Ksecondrycolor),
            ),
            CustomRowDetails(text1: 'material : ', text2: 'polyster'),
            CustomRowDetails(text1: 'shipping : ', text2: 'in 5 to 6 days'),
            CustomRowDetails(text1: 'Returns : ', text2: 'within 20 days'),
          ],
        ),
        Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag_outlined),
              Text(
                r'$89',
                style: TextStyle(
                    fontSize: 22, fontFamily: 'font1', color: Kprimarycolor),
              )
            ],
          ),
        )
      ],
    );
  }
}
