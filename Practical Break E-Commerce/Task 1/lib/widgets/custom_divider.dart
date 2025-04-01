import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: const Row(
        children: [
          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("  OR  ", style: TextStyle(fontSize: 16,color:Colors.grey )),
          ),
          Expanded(child: Divider(color: Colors.grey, thickness: .5)),
        ],
      ),
    );
  }
}
