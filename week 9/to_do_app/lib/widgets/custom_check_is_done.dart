import 'package:flutter/material.dart';

class CustomCheckIsDone extends StatefulWidget {
  const CustomCheckIsDone({super.key});

  @override
  State<CustomCheckIsDone> createState() => _CustomCheckIsDoneState();
}

class _CustomCheckIsDoneState extends State<CustomCheckIsDone> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDone = !isDone;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isDone ? Colors.blue : Colors.transparent,
          border: Border.all(
            color: isDone ? Colors.blue : Colors.grey,
            width: 2,
          ),
        ),
        child:
            isDone
                ? const Icon(Icons.check, size: 24, color: Colors.white)
                : null,
      ),
    );
  }
}
