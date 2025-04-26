import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  final Future<void> Function() onPressed;
  final String title;
  final IconData? icon;
  final bool isLoading;
  final Color color;

  const ButtonAction({
    super.key,
    required this.onPressed,
    required this.title,
    this.icon,
    this.isLoading = false,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
            backgroundColor: Colors.white,
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, color: Colors.white),
                const SizedBox(width: 8),
              ],
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
