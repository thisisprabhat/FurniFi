import 'package:flutter/material.dart';

import '/screens/notification/ui/notification.dart';
import '/screens/authentication/ui/login.dart';
import '/screens/authentication/ui/signup.dart';
import '/screens/onboarding/ui/onboarding_screen.dart';
import '/screens/mainpage/ui/mainpage.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainPage.route:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case OnboardingScreen.route:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Login.route:
        return MaterialPageRoute(builder: (_) => const Login());
      case Signup.route:
        return MaterialPageRoute(builder: (_) => const Signup());
      case NotificationPage.route:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      default:
        return null;
    }
  }
}
