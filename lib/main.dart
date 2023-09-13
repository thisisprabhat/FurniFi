import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'config/themes.dart';
import 'config/routes.dart';
import 'constants/strings.dart';
import 'config/firebase_options.dart';
import 'screens/homescreen/ui/homescreen.dart';
import 'screens/onboarding/ui/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Furnifi());
}

class Furnifi extends StatelessWidget {
  const Furnifi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.furnifi,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: OnboardingScreen.route,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
