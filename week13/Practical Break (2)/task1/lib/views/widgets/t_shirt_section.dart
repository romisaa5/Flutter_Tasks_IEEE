import 'package:flutter/material.dart';
import 'package:task1/views/widgets/custom_T_shirt_item.dart';
import 'package:task1/views/widgets/custom_t_shirt_sizes.dart';

class T_shirtSection extends StatelessWidget {
  const T_shirtSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTShirtItem(),
        CustomTShirtSizes()
      ],
    );
  }
}