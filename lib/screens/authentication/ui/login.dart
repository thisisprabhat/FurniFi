import 'package:Furnifi/screens/authentication/ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/assets.dart';
import '../../../constants/strings.dart';
import '../../../constants/style.dart';
import '../../../utils/input_validation.dart';

part 'components/login_icon_texts.dart';
part 'components/login_bottom_buttons.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const String route = "login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.login),
        backgroundColor: colorScheme.background,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(AppString.skip, style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const LoginIconAndTexts(),
              TextFormField(
                controller: _emailController,
                validator: InputValidator.email,
                decoration: const InputDecoration(
                  label: Text(AppString.email),
                  hintText: AppString.enterEmail,
                ),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: _isPasswordVisible,
                validator: InputValidator.password,
                decoration: InputDecoration(
                  suffix: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () => setState(
                      () => _isPasswordVisible = !_isPasswordVisible,
                    ),
                  ),
                  label: const Text(AppString.password),
                  hintText: AppString.enterPassword,
                ),
              ),
              LoginBottomButtons(
                onLoginPressed: () {
                  FocusScope.of(context).unfocus();
                  _formKey.currentState?.validate();
                },
                onCreateNewAccountPressed: () {
                  Navigator.pushNamed(context, Signup.route);
                },
                onGooglePressed: () {},
                onFaceBookPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
