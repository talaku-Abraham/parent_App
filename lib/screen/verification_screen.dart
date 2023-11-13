import 'package:flutter/material.dart';

import 'package:parent_app/widgets/texttfield/password_Input_field.dart';

import '../l10n/gen/app_localizations.dart';
import '../widgets/buttons/custom_button.dart';
import '../widgets/buttons/custom_textbutton.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          Locales.of(context).otpText,
          style:
              const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text.rich(
                TextSpan(
                  text: Locales.of(context).otpEnter,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: Locales.of(context).userEmail,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PasswordInputField(),
                  PasswordInputField(),
                  PasswordInputField(),
                  PasswordInputField(),
                  PasswordInputField(),
                ],
              ),
              Row(
                children: [
                  Text(Locales.of(context).didnotGetCodeText),
                  CustomTextButton(
                    onPressed: () {},
                    buttonText: Locales.of(context).resendText,
                    textColor: Colors.orange,
                  ),
                  Text(Locales.of(context).resendTimeText),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ConfirmButton(
                    onpPressed: () {
                      // Navigator.of(context)
                      //     .pushNamed(RouteGenerator.recordScreen);
                      if (_formkey.currentState!.validate()) {}
                    },
                    labelColor: Colors.white,
                    labelText: Locales.of(context).verifyText,
                    // Locales.of(context).loginText
                  ),
                ),
              ),
              CustomTextButton(
                onPressed: () {},
                buttonText: Locales.of(context).codeViaEmailText,
                textColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
