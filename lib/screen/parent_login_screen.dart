import 'package:flutter/material.dart';
import 'package:parent_app/l10n/gen/app_localizations.dart';
import 'package:parent_app/route.dart';
import 'package:parent_app/widgets/buttons/custom_textbutton.dart';
import 'package:parent_app/widgets/texttfield/custom_textfield.dart';

import '../widgets/buttons/custom_button.dart';
import '../widgets/texttfield/password_form_field.dart';

class ParentLoginScreen extends StatefulWidget {
  const ParentLoginScreen({super.key});

  @override
  State<ParentLoginScreen> createState() => _ParentLoginScreenState();
}

class _ParentLoginScreenState extends State<ParentLoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          Locales.of(context).log_in_detail,
          style:
              const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700),
        ),
      ),
      body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                      hintText: Locales.of(context).hintLabelText,
                      controller: _emailController,
                      labelText: Locales.of(context).email_username,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return Locales.of(context).enterTextPrompt;
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 12.0,
                  ),
                  PasswordFormField(
                    controller: _passwordController,
                    labelText: Locales.of(context).passwordText,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return Locales.of(context).enterTextPrompt;
                      }
                      return null;
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomTextButton(
                        textColor: Colors.black,
                        onPressed: () {},
                        buttonText: Locales.of(context).forgotPasswordText),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ConfirmButton(
                          onpPressed: () {
                            if (_formkey.currentState!.validate()) {}
                          },
                          labelColor: Colors.white,
                          labelText: Locales.of(context).loginText),
                    ),
                  ),
                  CustomTextButton(
                      textColor: const Color.fromRGBO(255, 152, 0, 1),
                      onPressed: () => Navigator.of(context)
                          .pushNamed(RouteGenerator.teachersSignupScreen),
                      buttonText: Locales.of(context).createAccountButtonText),
                ],
              ),
            ),
          )),
    );
  }
}
