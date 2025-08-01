import 'package:flutter/material.dart';

void showSuccessSnackBar(BuildContext context, String message) {
  _showCustomSnackBar(
    context,
    message,
    icon: Icons.check_circle,
    backgroundColor: Colors.green.shade600,
  );
}

void showErrorSnackBar(BuildContext context, String message) {
  _showCustomSnackBar(
    context,
    message,
    icon: Icons.error,
    backgroundColor: Colors.red.shade600,
  );
}

void _showCustomSnackBar(
  BuildContext context,
  String message, {
  required IconData icon,
  required Color backgroundColor,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(left: 12, right: 12),   
      backgroundColor: backgroundColor,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      duration: const Duration(seconds: 2),
    ),
  );
}
