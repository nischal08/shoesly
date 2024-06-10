import 'package:flutter/services.dart';

class Validation {
  static int passwordMaxLength = 20;
  static int fullNameMaxLength = 100;
  static int addressMaxLength = 100;
  static int phoneMaxLength = 10;
  String? validateEmail(String value) {
    if (value.trim().isEmpty) {
      return "Please enter E-mail";
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return "E-Mail is not valid";
    }
    return null;
  }

  String? validatePassword(String value,
      {bool isConfirmPassword = false,
      String? confirmValue,
      bool isOldPassword = false}) {
    if (value.trim().isEmpty) {
      return "Please enter password";
    }
    if (isConfirmPassword) {
      if (value != confirmValue) {
        return "Your passwords does not match";
      }
    }
    if (value.length < 8) {
      return "Please enter 8 letter password";
    }
    if (isOldPassword) return null;
    final RegExp passwordRegExp =
        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[\W_]).+$');
    if (!passwordRegExp.hasMatch(value)) {
      return "Password must contain at least one uppercase, one lowercase, one number and one symbol";
    }
    return null;
  }

  String? validate(String value, {required String title}) {
    if (value.trim().isEmpty) {
      return "Please enter your $title";
    }
    return null;
  }

  String? validateUserName(String value) {
    if (value.trim().isEmpty) {
      return "Please enter your Full Name";
    }
    return null;
  }

  String? validateAddress(String value) {
    if (value.trim().isEmpty) {
      return "Please enter your Address";
    }
    return null;
  }

  List<TextInputFormatter> getFullNameFormatter() {
    return [
      TextInputFormatter.withFunction(
        (TextEditingValue oldValue, TextEditingValue newValue) {
          if (newValue.text.isEmpty) return newValue;
          return RegExp(r"^[a-zA-Z ]+$").hasMatch(newValue.text)
              ? newValue
              : oldValue;
        },
      ),
    ];
  }

  List<TextInputFormatter> getAddressFormatter() {
    return [
      TextInputFormatter.withFunction(
        (TextEditingValue oldValue, TextEditingValue newValue) {
          if (newValue.text.isEmpty) return newValue;
          return RegExp(r"^[a-zA-Z0-9,\- ]+$").hasMatch(newValue.text)
              ? newValue
              : oldValue;
        },
      ),
    ];
  }

  List<TextInputFormatter> getPhoneFormatter() {
    return [
      TextInputFormatter.withFunction(
        (TextEditingValue oldValue, TextEditingValue newValue) {
          if (newValue.text.isEmpty) return newValue;
          return RegExp(r"^[0-9]+$").hasMatch(newValue.text)
              ? newValue
              : oldValue;
        },
      ),
    ];
  }

  String? validateAge(String value) {
    if (value.trim().isEmpty) {
      return "Please enter your age";
    } else if (int.tryParse(value) == null) {
      return "Please enter a numeric value";
    }
    if (int.parse(value) < 0 || int.parse(value) > 150) {
      return "Please enter age more than 0 and less than 150";
    }
    return null;
  }

  String? validateNumber(String value, String title, double maxValue,
      {bool isPhoneNumber = false}) {
    if (value.trim().isEmpty) {
      return "Please enter $title";
    } else if (double.tryParse(value) == null) {
      return "Please enter a numeric value";
    }
    if ((double.parse(value) < 0 || double.parse(value) > maxValue) &&
        !isPhoneNumber) {
      return "Please enter $title more than 0 and less than ${maxValue.toInt()}";
    }
    return null;
  }

  validateMobile(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Mobile number is required";
    } else if (!regExp.hasMatch(value.trim())) {
      return "Mobile number is not valid";
    } else if (value.trim().length != 10) {
      return "Length of mobile number must be 10 digits";
    } else if (!value.trim().startsWith('98') &&
        !value.trim().startsWith('97') &&
        !value.trim().startsWith('91')) {
      return "Mobile number is not valid";
    }
    return null;
  }
}
