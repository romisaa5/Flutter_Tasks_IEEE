import 'package:expenzo_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageIndicator extends StatelessWidget {
  final int currentIndex;

  const CustomPageIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 8,
          width: isActive ? 50.h : 25.h,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primaryColor : Color(0xffDDDDDD),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}
