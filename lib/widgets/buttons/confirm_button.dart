import 'package:flutter/material.dart';

import 'custom_button.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton(
      {super.key,
      required this.onpPressed,
      required this.labelColor,
      required this.labelText});
  final VoidCallback onpPressed;
  final Color labelColor;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonStyle: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            fontFamily: 'Lato', fontSize: 16, fontWeight: FontWeight.w700),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onpPressed,
      label: labelText,
      labelColor: labelColor,
    );
  }
}
