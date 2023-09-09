import 'package:flutter/material.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({
    super.key,
    required this.length,
    required this.currentIndex,
    required this.onNextPressed,
    required this.onSkipPressed,
    required this.onGetStartedPress,
  });
  final int length;
  final int currentIndex;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;
  final VoidCallback onGetStartedPress;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 400),
        child: Visibility(
          visible: currentIndex < length - 1,
          replacement: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.maxFinite),
            child: ElevatedButton(
              onPressed: onGetStartedPress,
              child: const Text("Get Started"),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: onSkipPressed,
                child: const Text("Skip"),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: onNextPressed,
                child: Container(
                  height: 34,
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "   Next ",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: colorScheme.onPrimary),
                      ),
                      Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          color: colorScheme.primary,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_right,
                          color: colorScheme.onPrimary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
