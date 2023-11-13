import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of Locales
/// returned by `Locales.of(context)`.
///
/// Applications need to include `Locales.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Locales.localizationsDelegates,
///   supportedLocales: Locales.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Locales.supportedLocales
/// property.
abstract class Locales {
  Locales(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Locales of(BuildContext context) {
    return Localizations.of<Locales>(context, Locales)!;
  }

  static const LocalizationsDelegate<Locales> delegate = _LocalesDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @onboarding_one_title.
  ///
  /// In en, this message translates to:
  /// **'View and print exam results quickly'**
  String get onboarding_one_title;

  /// No description provided for @onboarding_one_description.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper \n aliquam.'**
  String get onboarding_one_description;

  /// No description provided for @nextButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButtonLabel;

  /// No description provided for @skipButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skipButtonLabel;

  /// No description provided for @onboarding_two_title.
  ///
  /// In en, this message translates to:
  /// **'Get notified of your child’s activities'**
  String get onboarding_two_title;

  /// No description provided for @onboarding_two_description.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper \n aliquam.'**
  String get onboarding_two_description;

  /// No description provided for @onboarding_three_title.
  ///
  /// In en, this message translates to:
  /// **'Understand your child’s academic strengths'**
  String get onboarding_three_title;

  /// No description provided for @onboarding_three_description.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra ut et cursus nibh facilisi semper aliquam.'**
  String get onboarding_three_description;

  /// No description provided for @getStartedButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStartedButtonLabel;

  /// No description provided for @log_in_detail.
  ///
  /// In en, this message translates to:
  /// **'Enter your login \n details'**
  String get log_in_detail;

  /// No description provided for @email_username.
  ///
  /// In en, this message translates to:
  /// **'Email/Username'**
  String get email_username;

  /// No description provided for @enterTextPrompt.
  ///
  /// In en, this message translates to:
  /// **'please enter some text'**
  String get enterTextPrompt;

  /// No description provided for @passwordText.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordText;

  /// No description provided for @forgotPasswordText.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPasswordText;

  /// No description provided for @loginText.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get loginText;

  /// No description provided for @createAccountButtonText.
  ///
  /// In en, this message translates to:
  /// **'Click here to create an account'**
  String get createAccountButtonText;

  /// No description provided for @hintLabelText.
  ///
  /// In en, this message translates to:
  /// **'e.g john doe'**
  String get hintLabelText;

  /// No description provided for @accountCreateText.
  ///
  /// In en, this message translates to:
  /// **'Create a new account'**
  String get accountCreateText;

  /// No description provided for @emailText.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get emailText;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get passwordLabel;

  /// No description provided for @signUpLabel.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUpLabel;

  /// No description provided for @accountExistText.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get accountExistText;

  /// No description provided for @otpText.
  ///
  /// In en, this message translates to:
  /// **'OTP Verification'**
  String get otpText;

  /// No description provided for @otpEnter.
  ///
  /// In en, this message translates to:
  /// **'Enter the one time password sent to'**
  String get otpEnter;

  /// No description provided for @userEmail.
  ///
  /// In en, this message translates to:
  /// **'Johndoe***@gmail.com'**
  String get userEmail;

  /// No description provided for @didnotGetCodeText.
  ///
  /// In en, this message translates to:
  /// **'Didn’t get code?'**
  String get didnotGetCodeText;

  /// No description provided for @resendText.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resendText;

  /// No description provided for @resendTimeText.
  ///
  /// In en, this message translates to:
  /// **'in 00:29'**
  String get resendTimeText;

  /// No description provided for @verifyText.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verifyText;

  /// No description provided for @codeViaEmailText.
  ///
  /// In en, this message translates to:
  /// **'Receive code via email'**
  String get codeViaEmailText;
}

class _LocalesDelegate extends LocalizationsDelegate<Locales> {
  const _LocalesDelegate();

  @override
  Future<Locales> load(Locale locale) {
    return SynchronousFuture<Locales>(lookupLocales(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_LocalesDelegate old) => false;
}

Locales lookupLocales(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return LocalesEn();
    case 'es': return LocalesEs();
  }

  throw FlutterError(
    'Locales.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
