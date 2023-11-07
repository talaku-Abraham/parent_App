import 'app_localizations.dart';

/// The translations for English (`en`).
class LocalesEn extends Locales {
  LocalesEn([String locale = 'en']) : super(locale);

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
}
