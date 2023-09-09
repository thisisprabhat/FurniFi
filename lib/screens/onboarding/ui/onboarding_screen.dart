import 'package:Furnifi/screens/homescreen/ui/homescreen.dart';
import 'package:Furnifi/screens/onboarding/ui/components/onboarding_body.dart';
import 'package:Furnifi/screens/onboarding/ui/components/onboarding_buttons.dart';
import 'package:Furnifi/widgets/scroll_pill.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/assets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const String route = "onboardingScreen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  final List<Widget> _items = [
    const OnboardingBody(
      title: "Get what you need",
      subtitle:
          "Customize your surrounding by choosing from our wide variety of collections",
      imagePath: Assets.products,
    ),
    OnboardingBody(
      title: "Get delivery on time",
      subtitle: "Get delivered safely at your doorsteps",
      imagePath: Assets.delivery,
      child: LottieBuilder.asset(Assets.delivery_lottie),
    ),
    const OnboardingBody(
      title: "Free Assembly",
      subtitle: "Get Free assembly by our professional assemblers",
      imagePath: Assets.repair,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _items.length,
              itemBuilder: (context, index) => _items[index],
              onPageChanged: (value) => setState(
                () => _currentIndex = value,
              ),
            ),
          ),
          ScrollablePill(
            width: 120,
            lengthOfItems: _items.length,
            currentIndex: _currentIndex,
          ),
          const SizedBox(height: 100),
          OnboardingButtons(
            length: _items.length,
            currentIndex: _currentIndex,
            onNextPressed: () => _controller.animateToPage(
              _currentIndex + 1,
              duration: const Duration(seconds: 1),
              curve: Curves.linearToEaseOut,
            ),
            onSkipPressed: () =>
                Navigator.pushReplacementNamed(context, HomeScreen.route),
            onGetStartedPress: () =>
                Navigator.pushReplacementNamed(context, HomeScreen.route),
          ),
        ],
      ),
    );
  }
}
