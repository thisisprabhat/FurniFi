import 'package:flutter/material.dart';

import '/core/constants/assets.dart';
import '/core/constants/strings.dart';
import '/core/constants/style.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.success,
              width: 200,
              height: 200,
            ),
            const SizedBox(height: paddingDefault * 2),
            const Text(
              AppString.orderedSuccessfully,
              style: TextStyle(
                color: successColor,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: paddingDefault * 4),
            TextButton(
              onPressed: () {}, //TODO: navigate to track order
              child: const Text(
                AppString.trackOrder,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {}, //TODO: navigate to home
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              ),
              child: const Text(AppString.home),
            )
          ],
        ),
      ),
    );
  }
}
