class Validations {
  static bool isEmailValid(String email) {
    final bool emailValid = RegExp(
        r"^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\.([a-z]{2}|([a-z]{3,}|[a-z]{2}\.[a-z]{2}))(?!\.)$")
        .hasMatch(email);
    return emailValid;
  }

  static bool isNameValid(String name) {
    final bool nameValid = RegExp(r'^[a-zA-Z ]+$').hasMatch(name);
    return nameValid;
  }

  static bool isPasswordValid(String password) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (!regex.hasMatch(password)) {
      return false;
    } else {
      return true;
    }
  }

  static bool isPhoneWithCodeValid(String phone) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    bool phoneValid = regExp.hasMatch(phone) && phone.length == 13;
    return phoneValid;
    //bool phoneValid = RegExp(r'1234567890').hasMatch(phone) && phone.length == 10;
  }

}

