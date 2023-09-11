import 'package:Furnifi/screens/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../screens/authentication/ui/login.dart';
import '../screens/homescreen/ui/homescreen.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case OnboardingScreen.route:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Login.route:
        return MaterialPageRoute(builder: (_) => const Login());
      default:
        return null;
    }
  }
}
