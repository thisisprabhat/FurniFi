part of '../login.dart';

class LoginBottomButtons extends StatelessWidget {
  const LoginBottomButtons(
      {super.key,
      required this.onLoginPressed,
      required this.onCreateNewAccountPressed,
      required this.onGooglePressed,
      required this.onFaceBookPressed});
  final VoidCallback onLoginPressed;
  final VoidCallback onCreateNewAccountPressed;
  final VoidCallback onGooglePressed;
  final VoidCallback onFaceBookPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const SizedBox(height: 40),
        ConstrainedBox(
          constraints: const BoxConstraints(
              minWidth: 500, maxHeight: 600, minHeight: 60),
          child: ElevatedButton(
            onPressed: onLoginPressed,
            child: const Text(AppString.login),
          ),
        ),
        const SizedBox(height: 10),
        ConstrainedBox(
          constraints: const BoxConstraints(
              minWidth: 500, maxHeight: 600, minHeight: 60),
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: borderRadiusSmall),
            ),
            onPressed: onCreateNewAccountPressed,
            child: const Text(
              AppString.createNewAccount,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.11),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onGooglePressed,
              style: ButtonStyle(
                side: MaterialStatePropertyAll(
                  BorderSide(color: colorScheme.outline),
                ),
              ),
              icon: Image.asset(
                Assets.google,
                height: 20,
              ),
            ),
            IconButton(
              onPressed: onFaceBookPressed,
              style: ButtonStyle(
                side: MaterialStatePropertyAll(
                  BorderSide(color: colorScheme.outline),
                ),
              ),
              icon: Image.asset(
                Assets.facebook,
                height: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
