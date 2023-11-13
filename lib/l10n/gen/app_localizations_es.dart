import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class LocalesEs extends Locales {
  LocalesEs([String locale = 'es']) : super(locale);

  @override
  String get onboarding_one_title => 'View and print exam results quickly';

  @override
  String get onboarding_one_description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper \n aliquam.';

  @override
  String get nextButtonLabel => 'Next';

  @override
  String get skipButtonLabel => 'Skip';

  @override
  String get onboarding_two_title => 'Get notified of your child’s activities';

  @override
  String get onboarding_two_description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper \n aliquam.';

  @override
  String get onboarding_three_title => 'Understand your child’s academic strengths';

  @override
  String get onboarding_three_description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper aliquam.';

  @override
  String get getStartedButtonLabel => 'Get Started';

  @override
  String get log_in_detail => 'Enter your login \n details';

  @override
  String get email_username => 'Email/Username';

  @override
  String get enterTextPrompt => 'please enter some text';

  @override
  String get passwordText => 'Password';

  @override
  String get forgotPasswordText => 'Forgot Password?';

  @override
  String get loginText => 'Log in';

  @override
  String get createAccountButtonText => 'Click here to create an account';

  @override
  String get hintLabelText => 'e.g john doe';

  @override
  String get accountCreateText => 'Create a new account';

  @override
  String get emailText => 'Enter your email address';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Confirm password';

  @override
  String get signUpLabel => 'Sign up';

  @override
  String get accountExistText => 'Already have an account?';

  @override
  String get otpText => 'OTP Verification';

  @override
  String get otpEnter => 'Enter the one time password sent to';

  @override
  String get userEmail => 'Johndoe***@gmail.com';

  @override
  String get didnotGetCodeText => 'Didn’t get code?';

  @override
  String get resendText => 'Resend';

  @override
  String get resendTimeText => 'in 00:29';

  @override
  String get verifyText => 'Verify';

  @override
  String get codeViaEmailText => 'Receive code via email';
}
