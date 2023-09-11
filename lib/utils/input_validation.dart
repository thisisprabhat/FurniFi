class InputValidator {
  static validateName(String value) {
    String pattern = r'^[a-z A-Z]+$';
    RegExp regex = RegExp(pattern);
    if (value.isEmpty) {
      return 'Name is required';
    } else if (!regex.hasMatch(value)) {
      return 'Enter only characters';
    } else if (value.length > 45) {
      return 'Max 45 characters req.';
    } else {
      return null;
    }
  }

  static String? validateEmail(String? value) {
    if (value != null) {
      bool validEmail = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);
      if (value.isEmpty) {
        return 'Email is required';
      } else if (validEmail) {
        return null;
      } else {
        return 'Invalid email address';
      }
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Password is required';
      } else if (value.length < 6) {
        return 'minimum 6 characters required';
      } else {
        return null;
      }
    }
    return null;
  }
}
