import 'package:flutter/material.dart';
import 'package:task1/views/forget_password.dart';
import 'package:task1/views/home_view.dart';
import 'package:task1/views/register_screen.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_divider.dart';
import 'package:task1/widgets/custom_login_container.dart';
import 'package:task1/widgets/custom_text_form_field_for_email.dart';
import 'package:task1/widgets/custom_text_form_field_for_passsword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formkey,
            child: Column(
              spacing: 20,
              children: [
                CustomLoginContainer(),
                CustomTextFormFieldForEmail(
                  passwordFocusNode: passwordFocusNode,
                  emailController: emailController,
                ),
                CustomTextFormFieldForPasssword(
                  passwordFocusNode: passwordFocusNode,
                  passwordController: passwordController,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPassword(),
                        ),
                      );
                    },
                    child: Text(
                      "Forget Password ?   ",
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ),
                ),

                CustomButton(
                  title: 'Login',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeView()),
                    );
                  },
                ),

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
      ),
    );
  }
}
