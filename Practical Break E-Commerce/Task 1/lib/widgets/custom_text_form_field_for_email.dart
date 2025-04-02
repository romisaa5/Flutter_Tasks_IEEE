import 'package:flutter/material.dart';

class CustomTextFormFieldForEmail extends StatefulWidget {
  const CustomTextFormFieldForEmail({super.key, required this.emailController, this.passwordFocusNode});
final TextEditingController emailController;
  final FocusNode ?passwordFocusNode;
  @override
  State<CustomTextFormFieldForEmail> createState() =>
      _CustomTextFormFieldForEmailState();
}

class _CustomTextFormFieldForEmailState
    extends State<CustomTextFormFieldForEmail> {
      final FocusNode _emailFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The field is required';
        }
        if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) {
          return 'Enter a valid email';
        }
        return null;
      },
      onEditingComplete: () {
        
        FocusScope.of(context).requestFocus(widget.passwordFocusNode);
      },
      textInputAction: TextInputAction.next,
      focusNode: _emailFocusNode,
      controller: widget.emailController,
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
