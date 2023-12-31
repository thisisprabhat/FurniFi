import 'package:flutter/material.dart';

import '/core/constants/strings.dart';
import '/core/constants/style.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const route = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: paddingDefault,
          left: paddingDefault,
          right: paddingDefault,
        ),
        children: const [
          ListTile(
            title: Text('Only this screen is pending'),
          )
        ],
      ),
    );
  }
}
