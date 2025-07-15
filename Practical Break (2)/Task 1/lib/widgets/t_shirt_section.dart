import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_T_shirt_item.dart';
import 'package:task1/widgets/custom_t_shirt_sizes.dart';

class TshirtSection extends StatelessWidget {
  const TshirtSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [CustomTShirtItem(), CustomTShirtSizes()],
    );
  }
}
