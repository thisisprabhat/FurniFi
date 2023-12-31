part of '../onboarding_screen.dart';

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
            child: ClipOval(
              child: child ??
                  Container(
                    margin: const EdgeInsets.all(paddingDefault * 2),
                    padding: const EdgeInsets.all(paddingDefault * 2),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        shape: BoxShape.circle),
                    child: Lottie.asset(imagePath ?? ''),
                  ),
            ),
            // Image.asset(
            //   imagePath ?? "",
            //   height: 280,
            //   width: 280,
            // ),
            // RiveAnimation.asset(
            //   Assets.onboardingRive,
            //   artboard: imagePath,
            // ),
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
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
