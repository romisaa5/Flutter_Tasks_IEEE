import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/widgets/custom_header.dart';
import 'package:auth_screens/widgets/custom_register_form.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final remainingHeight = screenHeight - 259;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomHeader(title: 'Register'),
          ),

          Expanded(
            child: Positioned(
              top: 259,
              child: CustomRegisterForm(hight: remainingHeight),
            ),
          ),
          Positioned(
            top: 209,
            left: 134,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColor.greydark,
              child: Icon(Icons.camera_alt, color: AppColor.greyDarkest),
            ),
          ),
        ],
      ),
    );
  }
}
