import 'package:flutter/material.dart';
import 'package:parent_app/screen/parent_login_screen.dart';
import 'package:parent_app/screen/record_screen.dart';
import 'package:parent_app/screen/teachers_sign_up.dart';
import 'package:parent_app/screen/verification_screen.dart';

import 'screen/home_screen.dart';

class RouteGenerator {
  static const String mainScreen = '/';
  static const String parentLoginScreen = '/parentLoginScreen';
  static const String teachersSignupScreen = '/teachersSignupScreen';
  static const String verificationScreen = '/verificationScreen';
  static const String recordScreen = '/recordScreen';

  RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case parentLoginScreen:
        return MaterialPageRoute(
          builder: (context) => const ParentLoginScreen(),
        );
      case teachersSignupScreen:
        return MaterialPageRoute(
          builder: (context) => const TeachersSignupScreen(),
        );
      case verificationScreen:
        return MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        );
      case recordScreen:
        return MaterialPageRoute(
          builder: (context) => const RecordScreen(),
        );
      default:
        throw const FormatException('Route Not Found');
    }
  }
}
