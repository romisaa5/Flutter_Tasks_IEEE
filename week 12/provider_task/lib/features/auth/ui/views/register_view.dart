import 'package:flutter/material.dart';
import 'package:provider_task/features/auth/ui/widgets/custom_register_form.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomRegisterForm());
  }
}
