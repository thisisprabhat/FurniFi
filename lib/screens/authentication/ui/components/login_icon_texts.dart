part of '../login.dart';

class LoginIconAndTexts extends StatelessWidget {
  const LoginIconAndTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 60,
        right: 60,
        top: 20,
        bottom: 30,
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.iconForeground,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black87
                : null,
            height: 100,
            width: 100,
          ),
          Text(
            AppString.furnifi,
            style: GoogleFonts.wendyOne(fontSize: 26),
          ),
          const SizedBox(height: 8),
          const Text(
            AppString.loginAppInfo,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
