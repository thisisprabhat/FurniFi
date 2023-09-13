import 'package:flutter/material.dart';

import '../../../constants/strings.dart';
import '../../../utils/input_validation.dart';

part 'components/signup_profile_image.dart';
part 'components/signup_text_fields.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  static const String route = "signup";

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.signup),
        backgroundColor: colorScheme.background,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              SignupProfileImage(
                onEditPressed: () {}, //TODO: Add Image Implementation
              ),
              SignupTextFields(
                emailController: _emailController,
                passwordController: _passwordController,
                confirmPasswordController: _confirmPasswordController,
                firstNameController: _firstNameController,
                lastNameController: _lastNameController,
                phoneController: _phoneController,
                formKey: _formKey,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {}, //TODO: Implement signup button action
                child: const Text(AppString.signup),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(AppString.alreadyHaveAnAccount),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(AppString.login),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
