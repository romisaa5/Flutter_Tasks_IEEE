import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_button.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Password reset"),
            SizedBox(height: 5),
            Text(
              "Your password has been successfully reset. click confirm to set a new password",
            ),
            SizedBox(height: 20),
            CustomButton(title: "Confirm"),
          ],
        ),
      ),
    );
  }
}
