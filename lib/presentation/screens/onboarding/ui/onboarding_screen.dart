import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '/constants/assets.dart';
import '/constants/strings.dart';
import '/presentation/screens/authentication/ui/login.dart';
import '/widgets/scroll_pill.dart';

part 'components/onboarding_body.dart';
part 'components/onboarding_buttons.dart';

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
      title: AppString.onboardingTitle1,
      subtitle: AppString.onboardingSubtitle1,
      imagePath: Assets.products,
    ),
    OnboardingBody(
      title: AppString.onboardingTitle2,
      subtitle: AppString.onboardingSubtitle2,
      child: LottieBuilder.asset(Assets.deliveryLottie),
    ),
    const OnboardingBody(
      title: AppString.onboardingTitle3,
      subtitle: AppString.onboardingSubtitle3,
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
                Navigator.pushReplacementNamed(context, Login.route),
            onGetStartedPress: () =>
                Navigator.pushReplacementNamed(context, Login.route),
          ),
        ],
      ),
    );
  }
}
