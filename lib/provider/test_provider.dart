
import 'package:flutter/cupertino.dart';

class TestProvider with ChangeNotifier {

  String _msg = "";

  set setMsg(String m) {
    _msg = m;
    notifyListeners();
  }

  String get msg => _msg;

}