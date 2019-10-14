
import 'package:diajar/utils/reg_patterns.dart';
import 'package:flutter/cupertino.dart';

class RegisterProvider with ChangeNotifier {

  String _fullname = "";
  String _email = "";
  String _password = "";
  String _passwordValidation = "";

  static final _formKey = GlobalKey<FormState>();

  String get fullname => _fullname;
  String get email => _email;
  String get password => _password;
  String get passwordValidation => _passwordValidation;
  GlobalKey<FormState> get formKey => _formKey;

  void setFullname(String f) {
    _fullname = f;
    notifyListeners();
  }

  void setEmail(String e) {
    _email = e;
    notifyListeners();
  }

  void setPassword(String p) {
    _password = p;
    notifyListeners();
  }

  void setPasswordValidation(String p) {
    _passwordValidation = p;
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
      return "Panjang Password harus lebih dari 8";
    }
    return null;
  }

  String passwordValidationValidate(String pv, GlobalKey<FormFieldState<String>> txtKey) {
    if (pv.isEmpty) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Password tidak boleh kosong !";
    } else if (pv.length < 8) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Panjang password harus lebih dari 8";
    } else if (pv != txtKey.currentState.value) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Validasi Password harus sama";
    }
    return null;
  }

  void onRegisterBtnPressed() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }

    print('$_fullname $_email $_password $_passwordValidation');
  }

  void goRegister() {
    // bikin request POST ke auth api
  }

}