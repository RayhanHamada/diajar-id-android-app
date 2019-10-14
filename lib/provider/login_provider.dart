import 'package:flutter/cupertino.dart';
import './../utils/reg_patterns.dart';

class LoginProvider with ChangeNotifier {
  String _emailToSave = "";
  String _passwordToSave = "";

  LoginProvider(this._emailToSave, this._passwordToSave);

  String get email => _emailToSave;
  String get password => _passwordToSave;

  void setEmail(String email) {
    _emailToSave = email;
    notifyListeners();
  }

  void setPassword(String pass) {
    _passwordToSave = pass;
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

  void onLoginBtnPressed(GlobalKey<FormState> formKey) {
//    validate if the email and password input are valid, if so then save
//    if (formKey.currentState.validate()) {
//      formKey.currentState.save();
//      print("$_emailToSave $_passwordToSave");
//    }
  }

  void goLogin() {
//    bikin POST request ke auth api/
  }
}
