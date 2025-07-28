import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskerHeader extends StatelessWidget {
  const TaskerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final day = DateFormat('EEEE').format(now).toUpperCase();
    final dayNumber = DateFormat('d').format(now);
    final month = DateFormat('MMM').format(now).toUpperCase();
    final year = DateFormat('y').format(now);

    return Material(
      elevation: 4,
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    const Icon(Icons.menu, color: Colors.white),
                    const Text(
                      'Tasker',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  dayNumber,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      month,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      year,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  day,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
