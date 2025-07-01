import 'package:auth_screens/helper/validation_methods.dart';
import 'package:auth_screens/theme/app_color.dart';
import 'package:auth_screens/theme/text_styles.dart';
import 'package:auth_screens/views/login_view.dart';
import 'package:auth_screens/widgets/custom_button.dart';
import 'package:auth_screens/widgets/custom_divider.dart';
import 'package:auth_screens/widgets/custom_facebook_gmail.dart';
import 'package:auth_screens/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomRegisterForm extends StatelessWidget {
  const CustomRegisterForm({super.key, required this.hight});

  final double hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: hight,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Name', style: Styles.textStyle18),
            AppTextFormField(
              hintText: 'Your Name, e.g : John Doe',
              validator: (value) => ValidationMethods.validateUsername(value),
            ),
            Text('Email', style: Styles.textStyle18),
            AppTextFormField(
              hintText: 'Enter your email',
              validator: (value) => ValidationMethods.validateEmail(value),
            ),
            Text('Phone Number', style: Styles.textStyle18),
            AppTextFormField(
              hintText: 'Your phone number, e.g : +01 112 xxx xxx',
              validator: (value) => ValidationMethods.validatephone(value),
            ),

            Text('Password', style: Styles.textStyle18),
            AppTextFormField(
              hintText: 'Enter your password',
              validator: (value) => ValidationMethods.validatePassword(value),
            ),
            Text('Confirm Password', style: Styles.textStyle18),
            AppTextFormField(
              hintText: 'Re-type your password',
              validator:
                  (value) => ValidationMethods.validateConfirmPassword(value),
            ),

            CustomButton(
              text: 'Register',
              color: AppColor.kPrimaryColor,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account? Login',
                  style: Styles.textStyle12,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginView();
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
            CustomDivider(text: 'Or register with'),
            SizedBox(height: 5),
            CustomFacebookGmail(),
          ],
        ),
      ),
    );
  }
}
