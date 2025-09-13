import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  final String avatarUrl;
  final VoidCallback? onImageTap;
  final VoidCallback? onVideoTap;
  final VoidCallback? onAttachTap;

  const PostBox({
    super.key,
    required this.avatarUrl,
    this.onImageTap,
    this.onVideoTap,
    this.onAttachTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: .4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Transform.rotate(
                  angle: -0.1,
                  child: Image.asset(
                    avatarUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                "What's on your head?",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),

          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildOption(Icons.image, "Image", onImageTap),
              _buildOption(Icons.video_call, "Videos", onVideoTap),
              _buildOption(Icons.attach_file, "Attach", onAttachTap),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOption(IconData icon, String label, VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 4),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
