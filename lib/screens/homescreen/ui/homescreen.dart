import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants/assets.dart';
import '/constants/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
            height: 20,
            width: 20,
            Assets.iconForeground,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black87
                : null),
        title: Text(
          AppString.furnifi,
          style: GoogleFonts.wendyOne(fontSize: 26),
        ),
      ),
    );
  }
}
