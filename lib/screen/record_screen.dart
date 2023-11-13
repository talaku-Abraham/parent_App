import 'package:flutter/material.dart';
import 'package:parent_app/l10n/gen/app_localizations.dart';
import 'package:parent_app/route.dart';

import 'package:parent_app/widgets/texttfield/custom_textfield.dart';

import '../widgets/buttons/custom_button.dart';
import '../widgets/buttons/custom_textbutton.dart';
import '../widgets/texttfield/password_form_field.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
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
        title: const Text(
          'Create a new account',
          // Locales.of(context).log_in_detail,
          style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700),
        ),
      ),
      body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                      hintText: 'Enter your email address',
                      controller: _emailController,
                      labelText: 'Email',
                      //  Locales.of(context).email_username,
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
                  const SizedBox(
                    height: 12.0,
                  ),
                  PasswordFormField(
                    controller: _confirmPasswordController,
                    labelText: 'Confirm password',
                    // Locales.of(context).passwordText,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return Locales.of(context).enterTextPrompt;
                      }
                      return null;
                    },
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
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.verificationScreen);
                            if (_formkey.currentState!.validate()) {
                              // Navigator.of(context)
                              //     .pushNamed(RouteGenerator.verificationScreen);
                            }
                          },
                          labelColor: Colors.white,
                          labelText: 'Sign up'
                          // Locales.of(context).loginText
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        CustomTextButton(
                          onPressed: () {},
                          buttonText: 'Log In',
                          textColor: Colors.orange,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
