import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

class RouteGenerator {
  static const String mainScreen = '/';
  RouteGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        throw const FormatException('Route Not Found');
    }
  }
}
