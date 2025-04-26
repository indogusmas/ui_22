import 'package:flutter/material.dart';

class DialogMsg extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onPressed;
  final String closeText;
  final Color color;

  const DialogMsg({
    super.key,
    required this.title,
    required this.message,
    required this.onPressed,
    this.closeText = 'Ok',
    this.color = Colors.blue
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: color,
        ),
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: onPressed,
          child: Text(closeText),
        ),
      ],
    );
  }
}

class DialogAction extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onPressedOk;
  final VoidCallback onPressCancel;
  final String okText;
  final String cancelText;
  final Color color;

  const DialogAction({
    super.key,
    required this.title,
    required this.message,
    required this.onPressedOk,
    required this.onPressCancel,
    this.okText = 'Ok',
    this.cancelText = 'Close',
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: color
        ),
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: onPressCancel,
          child: Text(cancelText),
        ),
        TextButton(
          onPressed: onPressedOk,
          child:  Text(okText),
        ),
      ],
    );
  }
}

