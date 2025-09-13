import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_task/core/helper/validation_methods.dart';
import 'package:provider_task/core/theme/text_theme.dart';
import 'package:provider_task/core/utils/app_router.dart';
import 'package:provider_task/core/widgets/custom_button.dart';
import 'package:provider_task/core/widgets/custom_text_form_field.dart';
import 'package:provider_task/features/auth/ui/widgets/custom_divider.dart';
import 'package:provider_task/features/auth/ui/widgets/custom_facebook_gmail.dart';
import 'package:provider_task/features/auth/ui/widgets/remember_me.dart';


class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  bool isshowPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 15.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Text(
              ' Login ',
              style: TextAppTheme.textStyle32.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text('Email', style: TextAppTheme.textStyle18),
            AppTextFormField(
              controller: emailController,
              hintText: 'Enter your email',
              validator: (value) => ValidationMethods.validateEmail(value),
            ),

            Text('Password', style: TextAppTheme.textStyle18),
            AppTextFormField(
              onChanged: (value) {},
              maxLines: 1,
              isObscureText: !isshowPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  isshowPassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
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
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextAppTheme.textStyle12.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By continuing, you agree to our ',
                    style: TextAppTheme.textStyle12,
                  ),
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextAppTheme.textStyle12.copyWith(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' and ', style: TextAppTheme.textStyle12),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextAppTheme.textStyle12.copyWith(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  GoRouter.of(context).go(AppRouter.navBar);
                }
              },
              text: 'Login',
              color: Colors.blue,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account yet? Register',
                  style: TextAppTheme.textStyle12,
                ),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.registerView);
                  },
                  child: Text(
                    'here',
                    style: TextAppTheme.textStyle12.copyWith(
                      color: Colors.blue,
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
    );
  }
}
