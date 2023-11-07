import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonStyle,
    required this.onPressed,
    required this.label,
    required this.labelColor,
  }) : super(key: key);

  final ButtonStyle buttonStyle;
  final VoidCallback onPressed;
  final String label;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: labelColor),
      ),
    );
  }
}
