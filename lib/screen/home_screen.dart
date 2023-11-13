import 'package:flutter/material.dart';
import 'package:parent_app/route.dart';
import 'package:parent_app/widgets/buttons/custom_button.dart';

import '../l10n/gen/app_localizations.dart';

import '../widgets/outboarding.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  var _currentPageIndex = 0;
  final _totalPages = 3; //

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPageIndex < _totalPages - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void _skipAllPages() {
    _pageController.jumpToPage(_totalPages - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.fromLTRB(5, 80, 5, 80),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPageIndex = page;
                    });
                  },
                  children: [
                    // Add your pages here
                    Outboarding(
                        maxHeight: constraints.maxHeight,
                        maxWidth: constraints.maxWidth,
                        imagePath: 'assets/images/onboarding1.png',
                        description:
                            Locales.of(context).onboarding_one_description,
                        title: Locales.of(context).onboarding_one_title),
                    Outboarding(
                        maxHeight: constraints.maxHeight,
                        maxWidth: constraints.maxWidth,
                        imagePath: 'assets/images/onboarding2.png',
                        description:
                            Locales.of(context).onboarding_two_description,
                        title: Locales.of(context).onboarding_two_title),
                    Outboarding(
                        maxHeight: constraints.maxHeight,
                        maxWidth: constraints.maxWidth,
                        imagePath: 'assets/images/onboarding3.png',
                        description:
                            Locales.of(context).onboarding_three_description,
                        title: Locales.of(context).onboarding_three_title),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_totalPages, (int index) {
                    return Container(
                      width: 20, // constraints.maxWidth * 0.25,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: _currentPageIndex == index
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        color: _currentPageIndex == index
                            ? Colors.orange
                            : Colors.grey,
                        borderRadius: _currentPageIndex == index
                            ? BorderRadius.circular(5)
                            : null,
                      ),
                    );
                  }),
                ),
              ),
              if (_currentPageIndex != _totalPages - 1)
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
              if (_currentPageIndex != _totalPages - 1)
                SizedBox(
                  // height: 5,
                  height: constraints.maxHeight * 0.07,
                  width: double.infinity,
                  child: ConfirmButton(
                      onpPressed: _goToNextPage,
                      labelColor: Colors.white,
                      labelText: Locales.of(context).nextButtonLabel),
                ),
              if (_currentPageIndex != _totalPages - 1)
                const SizedBox(
                  height: 5,
                  // height: constraints.maxHeight * 0.02,
                ),
              if (_currentPageIndex != _totalPages - 1)
                SizedBox(
                  // height: 5,
                  height: constraints.maxHeight * 0.07,
                  child: SkipButton(
                      onpressed: _skipAllPages, labelColor: Colors.blue),
                ),
              if (_currentPageIndex == _totalPages - 1)
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
              if (_currentPageIndex == _totalPages - 1)
                SizedBox(
                  // height: 5,
                  height: constraints.maxHeight * 0.07,
                  width: double.infinity,
                  child: ConfirmButton(
                      onpPressed: () => Navigator.of(context)
                          .pushReplacementNamed(
                              RouteGenerator.parentLoginScreen),
                      labelColor: Colors.white,
                      labelText: Locales.of(context).getStartedButtonLabel),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
