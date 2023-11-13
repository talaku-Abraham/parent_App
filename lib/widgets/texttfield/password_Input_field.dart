import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key});
//Code comment to be done later: "Controller and validation logic implementation pending."
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10.0),
          // hintText: 'Enter your text',
        ),
      ),
    );
  }
}
