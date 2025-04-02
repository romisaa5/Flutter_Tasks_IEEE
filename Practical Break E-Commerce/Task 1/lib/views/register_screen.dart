import 'package:flutter/material.dart';
import 'package:task1/views/home_view.dart';
import 'package:task1/views/login_screen.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_divider.dart';
import 'package:task1/widgets/custom_gradient_text.dart';
import 'package:task1/widgets/custom_text_form_field_for_confirm_password.dart';
import 'package:task1/widgets/custom_text_form_field_for_email.dart';
import 'package:task1/widgets/custom_text_form_field_for_passsword.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final passwordFocusNode = FocusNode();
  final confirmpasswordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 20,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffdeecec),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 221, 59, 48),
                        ),
                      ),
                    ),
          
                    const Text(
                      "Back To Login",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
          
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.notifications,
                        color: Color.fromARGB(255, 221, 59, 48),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
             CustomGradientText(text: 'Sign Up'),
              SizedBox(height: 20,),
              CustomTextFormFieldForEmail(
                 passwordFocusNode: passwordFocusNode,
                  emailController: emailController,
              ),
              CustomTextFormFieldForPasssword(
                 confirmpasswordFocusNode: confirmpasswordFocusNode,
                  passwordFocusNode: passwordFocusNode,
                  passwordController: passwordController,
              ),
              CustomTextFormFieldForConfirmPassword(
                 passwordController: confirmPasswordController,
                  confirmpasswordFocusNode: confirmpasswordFocusNode,
              ),
              SizedBox(height: 20,),
              CustomButton(title: 'Sign Up',
               onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeView()),
                    );
                  },),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an acount?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      '   Login',
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
