import 'package:flutter/material.dart';
import 'package:task1/views/register_screen.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_divider.dart';
import 'package:task1/widgets/custom_login_container.dart';
import 'package:task1/widgets/custom_text_form_field_for_email.dart';
import 'package:task1/widgets/custom_text_form_field_for_passsword.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 20,
            children: [
              CustomLoginContainer(),
              CustomTextFormFieldForEmail(),
              CustomTextFormFieldForPasssword(),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password ?   ",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),

              CustomButton(title: 'Login'),

              CustomDivider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do Create Your acount?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      '   Register',
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
