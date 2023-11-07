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
