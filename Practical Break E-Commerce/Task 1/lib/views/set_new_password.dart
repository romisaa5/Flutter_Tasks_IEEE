import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_text_form_field_for_confirm_password.dart';
import 'package:task1/widgets/custom_text_form_field_for_passsword.dart';


class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
   final TextEditingController confirmpasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
           spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
          Text(
            "Password reset",
            
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Your password has been successfully reset. click confirm to set a new password",
           
          ),
          Text(
            'Password',
            
          ),
          CustomTextFormFieldForPasssword(),
          Text(
            'Confirm Password',
            
          ),
       CustomTextFormFieldForConfirmPassword(),
          SizedBox(height: 15,),
          CustomButton(
              title: 'Update Password',
          )
        ]),
      ),
    );
  }
}
