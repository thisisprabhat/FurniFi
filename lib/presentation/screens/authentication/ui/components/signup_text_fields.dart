part of '../signup.dart';

class SignupTextFields extends StatefulWidget {
  const SignupTextFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneController,
    required this.formKey,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneController;
  final GlobalKey<FormState> formKey;

  @override
  State<SignupTextFields> createState() => _SignupTextFieldsState();
}

class _SignupTextFieldsState extends State<SignupTextFields> {
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.firstNameController,
            keyboardType: TextInputType.name,
            validator: InputValidator.name,
            decoration: const InputDecoration(
              label: Text(AppString.firstname),
              hintText: AppString.firstNameHint,
            ),
          ),
          TextFormField(
            controller: widget.lastNameController,
            keyboardType: TextInputType.name,
            validator: InputValidator.name,
            decoration: const InputDecoration(
              label: Text(AppString.lastName),
              hintText: AppString.lastNameHint,
            ),
          ),
          TextFormField(
            controller: widget.emailController,
            keyboardType: TextInputType.emailAddress,
            validator: InputValidator.email,
            decoration: const InputDecoration(
              label: Text(AppString.email),
              hintText: AppString.enterEmail,
            ),
          ),
          TextFormField(
            controller: widget.phoneController,
            keyboardType: TextInputType.phone,
            validator: InputValidator.phone,
            decoration: const InputDecoration(
              label: Text(AppString.phone),
              hintText: AppString.enterPhone,
            ),
          ),
          TextFormField(
            controller: widget.passwordController,
            obscureText: _isPasswordVisible,
            keyboardType: TextInputType.visiblePassword,
            validator: InputValidator.password,
            decoration: InputDecoration(
              suffix: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () => setState(
                  () => _isPasswordVisible = !_isPasswordVisible,
                ),
              ),
              label: const Text(AppString.password),
              hintText: AppString.enterPassword,
            ),
          ),
          TextFormField(
            controller: widget.confirmPasswordController,
            obscureText: _isPasswordVisible,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) => InputValidator.confirmPassword(
                value, widget.passwordController.text),
            decoration: InputDecoration(
              suffix: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () => setState(
                  () => _isPasswordVisible = !_isPasswordVisible,
                ),
              ),
              label: const Text(AppString.confirmPassword),
              hintText: AppString.confirmPasswordHint,
            ),
          ),
        ],
      ),
    );
  }
}
