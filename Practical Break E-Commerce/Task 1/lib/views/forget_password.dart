import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_gradient_text.dart';
import 'package:task1/widgets/custom_text_form_field_for_email.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 25,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CustomGradientText(text: 'Forget Password')),
            SizedBox(
              height: 20,
            ),
            Text('Please enter your email to reset the password',style:TextStyle(fontSize:16,color: Colors.black45 ) ,),
            Text('Your Email : '),
            CustomTextFormFieldForEmail(),
            CustomButton(title: 'Reset Password'),
          ],
        ),
      ),
    );
  }
}
