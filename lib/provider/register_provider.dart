import 'package:diajar/utils/reg_patterns.dart';
import 'package:flutter/cupertino.dart';

class RegisterProvider with ChangeNotifier {
  String _fullname = "";
  String _email = "";
  String _password = "";
  String _passwordValidation = "";

  static final _formKey = GlobalKey<FormState>();
  static final _fullnameFieldKey = GlobalKey<FormFieldState<String>>();
  static final _emailFieldKey = GlobalKey<FormFieldState<String>>();
  static final _passFieldKey = GlobalKey<FormFieldState<String>>();
  static final _passValFieldKey = GlobalKey<FormFieldState<String>>();

  String get fullname => _fullname;
  String get email => _email;
  String get password => _password;
  String get passwordValidation => _passwordValidation;

  static get formKey => _formKey;
  static get fullnameFieldKey => _fullnameFieldKey;
  static get emailFieldKey => _emailFieldKey;
  static get passFieldKey => _passFieldKey;
  static get passValFieldKey => _passValFieldKey;

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
      return "Panjang Password harus lebih dari 8";
    }
    return null;
  }

  String passwordValidationValidate(String pv) {
    if (pv.isEmpty) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Password tidak boleh kosong !";
    } else if (pv.length < 8) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Panjang password harus >= 8";
    } else if (pv != _passFieldKey.currentState.value) {
      _fullname = _email = _password = _passwordValidation = "";
      return "Password validasi harus sama";
    }

    print("$_password $_passwordValidation");
    return null;
  }

  void goRegister() {
    // bikin request POST ke auth api
  }
}
