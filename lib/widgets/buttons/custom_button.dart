import 'package:flutter/material.dart';

import '../../l10n/gen/app_localizations.dart';

class _CustomButton extends StatelessWidget {
  const _CustomButton({
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
    return _CustomButton(
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

class SkipButton extends StatelessWidget {
  const SkipButton(
      {super.key, required this.onpressed, required this.labelColor});
  final VoidCallback onpressed;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return _CustomButton(
      buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide.none,
        ),
      ),
      onPressed: onpressed,
      label: Locales.of(context).skipButtonLabel,
      labelColor: labelColor,
    );
  }
}
