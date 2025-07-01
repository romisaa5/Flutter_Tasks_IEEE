import 'dart:developer';

import 'package:auth_screens/helper/validation_methods.dart';
import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:auth_screens/views/forget_password.dart';
import 'package:auth_screens/views/register_view.dart';
import 'package:auth_screens/widgets/custom_button.dart';
import 'package:auth_screens/widgets/custom_divider.dart';
import 'package:auth_screens/widgets/custom_facebook_gmail.dart';
import 'package:auth_screens/widgets/custom_text_form_field.dart';
import 'package:auth_screens/widgets/remember_me.dart';
import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key, required this.hight});
  final double hight;

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  bool isshowPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: widget.hight,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email', style: Styles.textStyle18),
              AppTextFormField(
                controller: emailController,
                hintText: 'Enter your email',
                validator: (value) => ValidationMethods.validateEmail(value),
              ),
              SizedBox(height: 10),
              Text('Password', style: Styles.textStyle18),
              AppTextFormField(
                onChanged: (value) {},
                maxLines: 1,
                isObscureText: !isshowPassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    isshowPassword ? Icons.visibility : Icons.visibility_off,
                    color: AppColor.greydark,
                  ),
                  onPressed: () {
                    setState(() {
                      isshowPassword = !isshowPassword;
                    });
                  },
                ),
                controller: passwordController,
                hintText: 'Enter your password',
                validator: (value) => ValidationMethods.validatePassword(value),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RememberMe(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgetPassword();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: Styles.textStyle12.copyWith(
                        color: AppColor.greydarker,
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    log('Email: ${emailController.text}');
                    log('Password: ${passwordController.text}');
                  }
                },
                text: 'Login',
                color: AppColor.kPrimaryColor,
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account yet? Register',
                    style: Styles.textStyle12,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterView();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'here',
                      style: Styles.textStyle12.copyWith(
                        color: AppColor.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              CustomDivider(text: 'Or login with'),
              SizedBox(height: 5),
              CustomFacebookGmail(),
            ],
          ),
        ),
      ),
    );
  }
}
