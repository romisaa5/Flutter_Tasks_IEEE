import 'package:flutter/material.dart';

class CustomTextFormFieldForConfirmPassword extends StatefulWidget {
  const CustomTextFormFieldForConfirmPassword({
    super.key,
    required this.passwordController,
    this.confirmpasswordFocusNode,
  });
  final TextEditingController passwordController;
  final FocusNode? confirmpasswordFocusNode;
  @override
  State<CustomTextFormFieldForConfirmPassword> createState() =>
      _CustomTextFormFieldForConfirmPasswordState();
}

class _CustomTextFormFieldForConfirmPasswordState
    extends State<CustomTextFormFieldForConfirmPassword> {
  bool isshown = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isshown,
      decoration: InputDecoration(
        suffixIcon:
            isshown
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      isshown = !isshown;
                    });
                  },
                  icon: Icon(Icons.visibility),
                )
                : IconButton(
                  onPressed: () {
                    setState(() {
                      isshown = !isshown;
                    });
                  },
                  icon: Icon(Icons.visibility_off),
                ),

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
