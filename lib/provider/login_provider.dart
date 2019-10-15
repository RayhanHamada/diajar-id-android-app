import 'package:flutter/cupertino.dart';
import './../utils/reg_patterns.dart';

class LoginProvider with ChangeNotifier {
  String _emailToSave = "";
  String _passwordToSave = "";

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final _emailFieldKey = GlobalKey<FormFieldState<String>>();
  static final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  LoginProvider(this._emailToSave, this._passwordToSave);

  String get emailToSave => _emailToSave;
  String get passwordToSave => _passwordToSave;

  GlobalKey<FormState> get formKey => _formKey;
  GlobalKey<FormFieldState<String>> get emailFieldKey => _emailFieldKey;
  GlobalKey<FormFieldState<String>> get passwordFieldKey => _passwordFieldKey;

  void setEmail(String email) {
    _emailToSave = email;
    print(_emailToSave);
    notifyListeners();
  }

  void setPassword(String pass) {
    _passwordToSave = pass;
    print(_passwordToSave);
    notifyListeners();
  }

  String validateEmail(String email) {
    if (!RegExp(emailPattern).hasMatch(email)) {
      _emailToSave = _passwordToSave = "";
      return "Masukkan email yang valid !";
    } else if (email.isEmpty) {
      _emailToSave = _passwordToSave = "";
      return "Email tidak boleh kosong !";
    }
    return null;
  }

  String validatePassword(String password) {
    if (password.isEmpty) {
      _emailToSave = _passwordToSave = "";
      return "Password tidak boleh kosong !";
    } else if (password.length < 8) {
      _emailToSave = _passwordToSave = "";
      return "Masukkan Password yang valid !";
    }
    return null;
  }

  void goLogin() {
//    bikin POST request ke auth api/
  }
}
