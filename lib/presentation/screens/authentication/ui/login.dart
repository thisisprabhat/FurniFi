import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '/presentation/screens/authentication/ui/signup.dart';
import '/presentation/screens/mainpage/ui/mainpage.dart';
import '/presentation/widgets/loader.dart';
import '/domain/bloc/auth_bloc/auth_bloc.dart';
import '/core/constants/assets.dart';
import '/core/constants/strings.dart';
import '/core/constants/style.dart';
import '/core/utils/common.dart';
import '/core/utils/input_validation.dart';

part 'components/login_icon_texts.dart';
part 'components/login_bottom_buttons.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const String route = 'login';

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
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          loginSuccess: () => Navigator.pushNamed(context, MainPage.route),
          loginFailed: (error) => snackBar(
            context,
            error: true,
            message:
                "${error.title} ${error.message != null ? '\n${error.message}' : ''}",
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(AppString.login),
            backgroundColor: colorScheme.background,
            actions: [
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, MainPage.route),
                child:
                    const Text(AppString.skip, style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
          body: state.maybeWhen(
            loggingIn: () => const Loader(),
            orElse: () => GestureDetector(
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
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                AuthEvent.loginWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              );
                          _emailController.clear();
                          _passwordController.clear();
                        }
                      },
                      onCreateNewAccountPressed: () {
                        Navigator.pushNamed(context, Signup.route);
                      },
                      onGooglePressed: () => context
                          .read<AuthBloc>()
                          .add(const AuthEvent.loginWithGoogle()),
                      onFaceBookPressed: () => context
                          .read<AuthBloc>()
                          .add(const AuthEvent.loginWithFacebook()),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
