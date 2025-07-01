import 'package:auth_screens/helper/validation_methods.dart';
import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:auth_screens/widgets/custom_button.dart';
import 'package:auth_screens/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColor.kPrimaryColor),
        ),
        centerTitle: true,
        title: Text(
          'Forget Password',
          style: Styles.textStyle16.copyWith(color: AppColor.kPrimaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Forgot_password.png'),
            AppTextFormField(
              onChanged: (value) {
                email = value;
              },
              controller: emailController,
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
              validator: (value) => ValidationMethods.validateEmail(value),
            ),
            CustomButton(
              onTap: () {},
              text: 'Verify Email',
              color: AppColor.kPrimaryColor,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
