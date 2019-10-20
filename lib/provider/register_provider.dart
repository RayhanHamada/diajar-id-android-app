import 'package:diajar/utils/reg_patterns.dart';
import 'package:flutter/cupertino.dart';

class RegisterProvider with ChangeNotifier {
  String _fullname = "";
  String _email = "";
  String _password = "";
  String _passwordValidation = "";

  String get fullname => _fullname;
  String get email => _email;
  String get password => _password;
  String get passwordValidation => _passwordValidation;

  void setFullname(String f) {
    _fullname = f;
    print(_fullname);
    notifyListeners();
  }

  void setEmail(String e) {
    _email = e;
    print(_email);
    notifyListeners();
  }

  void setPassword(String p) {
    _password = p;
    print(_password);
    notifyListeners();
  }

  void setPasswordValidation(String p) {
    _passwordValidation = p;
    print(_passwordValidation);
    notifyListeners();
  }

  String fullnameValidate(String fullname) {
    if (fullname.isEmpty) {
      return "Nama Lengkap tidak boleh kosong";
    }
    return null;
  }

  String emailValidate(String email) {
    if (!RegExp(emailPattern).hasMatch(email)) {
      return "Masukkan email yang valid !";
    } else if (email.isEmpty) {
      return "Email tidak boleh kosong !";
    }
    return null;
  }

  String passwordValidate(String password) {
    if (password.isEmpty) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Password tidak boleh kosong !";
    } else if (password.length < 8) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Panjang Password harus >= dari 8";
    }
    return null;
  }

  String passwordValidationValidate(
      String passwordValidation, String password) {
    if (passwordValidation.isEmpty) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Password tidak boleh kosong !";
    } else if (passwordValidation.length < 8) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Panjang password harus >= 8";
    } else if (passwordValidation != password) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Password validasi harus sama";
    }

    return null;
  }

  void goRegister() {
    // bikin request POST ke auth api
  }
}
