import 'package:flutter/material.dart';

class CircleListWidget extends StatelessWidget {
  const CircleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String?> images = [
      null,
      'assets/images/image.png',
      'assets/images/image.png',
      'assets/images/image.png',
      'assets/images/image.png',
      'assets/images/image.png',
    ];

    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final imageUrl = images[index];

          return Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.indigo, width: 2),
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundColor:
                  imageUrl == null
                      ? Colors.blue.withValues(alpha: .3)
                      : Colors.transparent,
              backgroundImage: imageUrl != null ? AssetImage(imageUrl) : null,
              child:
                  imageUrl == null
                      ? const Icon(Icons.add, size: 32, color: Colors.indigo)
                      : null,
            ),
          );
        },
      ),
    );
  }
}
