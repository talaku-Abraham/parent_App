import 'package:flutter/material.dart';
import 'package:parent_app/route.dart';

import 'l10n/gen/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: Locales.localizationsDelegates,
      supportedLocales: Locales.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'Parent_App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteGenerator.mainScreen,
    );
  }
}
