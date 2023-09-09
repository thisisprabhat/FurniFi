import 'package:Furnifi/constants/assets.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.title,
    required this.subtitle,
    this.imagePath,
    this.child,
  });
  final String title;
  final String subtitle;
  final String? imagePath;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            child: child ??
                Image.asset(
                  imagePath ?? "",
                  height: 280,
                  width: 280,
                ),
          ),
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
