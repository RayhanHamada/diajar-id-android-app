import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AfterLoginProvider with ChangeNotifier {
  static final _scaffoldKey = GlobalKey<ScaffoldState>();

  get scaffoldKey => _scaffoldKey;
}
