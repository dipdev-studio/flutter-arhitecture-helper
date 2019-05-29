class Validators {
  static bool isEmail(String email) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(email);
  }

  static bool isValidPassword(String password, int minLength,
      {bool containNumber = false, bool containUppercaseCharacter = false}) {
    return password.length > minLength;
  }

  static bool isPhoneValid(String phone) {
    Pattern pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = new RegExp(pattern);
    return !regex.hasMatch(phone);
  }
}
