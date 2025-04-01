import 'package:flutter/material.dart';

class CustomTextFormFieldForConfirmPassword extends StatefulWidget {
  const CustomTextFormFieldForConfirmPassword({super.key});

  @override
  State<CustomTextFormFieldForConfirmPassword> createState() =>
      _CustomTextFormFieldForConfirmPasswordState();
}

class _CustomTextFormFieldForConfirmPasswordState
    extends State<CustomTextFormFieldForConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Color.fromARGB(255, 221, 59, 48),
        ),
      ),
    );
  }
}
