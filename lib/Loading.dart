import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final String message;
  final Color color;

  const Loading({
    super.key,
    this.message = "Loading...",
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 150,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
