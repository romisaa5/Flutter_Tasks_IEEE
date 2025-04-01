import 'package:flutter/material.dart';

class CustomTextFormFieldForEmail extends StatefulWidget {
  const CustomTextFormFieldForEmail({super.key});

  @override
  State<CustomTextFormFieldForEmail> createState() =>
      _CustomTextFormFieldForEmailState();
}

class _CustomTextFormFieldForEmailState
    extends State<CustomTextFormFieldForEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        prefixIcon: const Icon(
          Icons.email_outlined,
          color: Color.fromARGB(255, 221, 59, 48),
        ),
      ),
    );
  }
}
