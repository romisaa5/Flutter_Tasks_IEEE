import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_gradient_text.dart';

class CustomLoginContainer extends StatelessWidget {
  const CustomLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 250,
        width: 320,
        decoration: BoxDecoration(
          color: const Color(0xffdeecec),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 221, 59, 48),
                  ),
                  onPressed: () {},
                ),

                const Text(
                  "Login",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),

                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 221, 59, 48),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 124, 119, 119),
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 40),
            CustomGradientText(text: 'Welcome'),
            const Text(
              "Please Login To continue",
              style: TextStyle(
                color: Color.fromARGB(255, 124, 119, 119),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
