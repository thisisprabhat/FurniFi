import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furnifai/config/routes.dart';
import 'package:furnifai/constants/strings.dart';

import 'firebase_options.dart';
import 'screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FurniFai());
}

class FurniFai extends StatelessWidget {
  const FurniFai({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.route,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
