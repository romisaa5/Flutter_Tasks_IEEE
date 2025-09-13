import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFacebookGmail extends StatelessWidget {
  const CustomFacebookGmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 35.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffC0C0C0).withValues(alpha: .2),
          child: Image.asset('assets/images/gmail.png', height: 20),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffC0C0C0).withValues(alpha: .2),
          child: Image.asset('assets/images/facebook.png', height: 20),
        ),
      ],
    );
  }
}
