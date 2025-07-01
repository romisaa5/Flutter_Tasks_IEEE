import 'package:flutter/material.dart';

class CustomFacebookGmail extends StatelessWidget {
  const CustomFacebookGmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xffC0C0C0).withValues(alpha: .2),
          child: Image.asset('assets/images/gmail.png', height: 19),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xffC0C0C0).withValues(alpha: .2),
          child: Image.asset('assets/images/facebook.png', height: 19),
        ),
      ],
    );
  }
}
