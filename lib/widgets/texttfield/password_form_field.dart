import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.validator});
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?) validator;

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Lato'),
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: '*******',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
