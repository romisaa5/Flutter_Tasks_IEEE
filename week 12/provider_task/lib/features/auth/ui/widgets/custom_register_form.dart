import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_task/core/helper/validation_methods.dart';
import 'package:provider_task/core/theme/text_theme.dart';
import 'package:provider_task/core/utils/app_router.dart';
import 'package:provider_task/core/widgets/custom_button.dart';
import 'package:provider_task/core/widgets/custom_text_form_field.dart';
import 'package:provider_task/features/auth/ui/widgets/custom_divider.dart';
import 'package:provider_task/features/auth/ui/widgets/custom_facebook_gmail.dart';


class CustomRegisterForm extends StatefulWidget {
  const CustomRegisterForm({super.key});

  @override
  State<CustomRegisterForm> createState() => _CustomRegisterFormState();
}

class _CustomRegisterFormState extends State<CustomRegisterForm> {
  bool isshowPassword = false;
  bool isshowConfirmPassword = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Register',
              style: TextAppTheme.textStyle32.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text('Name', style: TextAppTheme.textStyle18),
            AppTextFormField(
              controller: nameController,
              onChanged: (value) {},
              hintText: 'Your Name, e.g : John Doe',
              validator: (value) => ValidationMethods.validateUsername(value),
            ),
            Text('Email', style: TextAppTheme.textStyle18),
            AppTextFormField(
              controller: emailController,
              hintText: 'Enter your email',
              validator: (value) => ValidationMethods.validateEmail(value),
            ),
            Text('Phone Number', style: TextAppTheme.textStyle18),
            AppTextFormField(
              keyboardType: TextInputType.number,
              controller: phoneController,
              hintText: 'Your phone number, e.g : +01 112 xxx xxx',
              validator: (value) => ValidationMethods.validatephone(value),
            ),

            Text('Password', style: TextAppTheme.textStyle18),
            AppTextFormField(
              controller: passwordController,
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
              hintText: 'Enter your password',
              validator: (value) => ValidationMethods.validatePassword(value),
            ),
            Text('Confirm Password', style: TextAppTheme.textStyle18),
            AppTextFormField(
              controller: confirmPasswordController,
              onChanged: (value) {},
              maxLines: 1,
              isObscureText: !isshowConfirmPassword,
              suffixIcon: IconButton(
                icon: Icon(
                  isshowConfirmPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isshowConfirmPassword = !isshowConfirmPassword;
                  });
                },
              ),
              hintText: 'Re-type your password',
              validator:
                  (value) => ValidationMethods.validateConfirmPassword(value),
            ),

            CustomButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  GoRouter.of(context).push(AppRouter.navBar);
                }
              },
              text: 'Register',
              color: Colors.blue,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account? Login',
                  style: TextAppTheme.textStyle12,
                ),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.loginView);
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
            CustomDivider(text: 'Or register with'),
            SizedBox(height: 5),
            CustomFacebookGmail(),
          ],
        ),
      ),
    );
  }
}
