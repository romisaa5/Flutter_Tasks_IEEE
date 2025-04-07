

import 'package:flutter/material.dart';
import 'package:task2/core/styles.dart';

class CustomBuildHeader extends StatelessWidget {
  const CustomBuildHeader({super.key, required this.title, required this.subTitle, required this.ontap});
  final String title;
  final String subTitle;
final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold),
            ),
            InkWell(
                onTap:ontap ,
                child: Text(
                  'View all',
                  style: Styles.textStyle12.copyWith(color: Color(0xff222222)),
                ))
          ],
        ),
        Text(
          subTitle,
          style: Styles.textStyle12.copyWith(color: Color(0xff9B9B9B)),
        )
      ],
    );
  }
}
