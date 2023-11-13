import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color textColor;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
            color: textColor,
            fontFamily: 'Lato',
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
