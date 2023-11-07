import 'package:flutter/material.dart';

import '../../l10n/gen/app_localizations.dart';
import 'custom_button.dart';

class SkipButton extends StatelessWidget {
  const SkipButton(
      {super.key, required this.onpressed, required this.labelColor});
  final VoidCallback onpressed;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
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
