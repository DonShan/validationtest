class FieldValidator {
  static String? validateEmail(String value) {
    if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
      return "Enter your correct phone number";
    } else {
      return null;
    }
  }

  static String? validatePassword(String value) {
    if (value!.isEmpty) return "Enter password";

    if (value.length < 7) {
      return "Password must be more then 5 characters";
    }
  }
}
