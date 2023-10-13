import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furnifi/domain/bloc/auth_bloc/auth_bloc.dart';
import 'package:furnifi/presentation/screens/onboarding/ui/onboarding_screen.dart';

import 'core/config/themes.dart';
import 'core/config/routes.dart';
import 'core/constants/strings.dart';
import 'core/config/firebase_options.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc()),
      ],
      child: MaterialApp(
        title: AppString.furnifi,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: OnboardingScreen.route,
        onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }
}
