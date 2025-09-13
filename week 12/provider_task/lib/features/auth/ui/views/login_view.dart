import 'package:flutter/material.dart';
import 'package:provider_task/features/auth/ui/widgets/custom_login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomLoginForm());
  }
}
