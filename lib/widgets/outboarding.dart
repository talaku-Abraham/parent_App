import 'package:flutter/material.dart';

class Outboarding extends StatelessWidget {
  const Outboarding(
      {super.key,
      required this.maxHeight,
      required this.maxWidth,
      required this.imagePath,
      required this.title,
      required this.description});
  final double maxHeight;
  final double maxWidth;
  final String imagePath;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: maxHeight * 0.3,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: maxHeight * 0.03),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w700, fontFamily: 'Lato', fontSize: 24),
        ),
        SizedBox(height: maxHeight * 0.03),
        Text(
          description,
          textAlign: TextAlign.center,
          style:
              const TextStyle(fontFamily: 'lato', fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: maxHeight * 0.02,
        ),
      ],
    );
  }
}
