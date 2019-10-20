import 'package:diajar/provider/after_login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AfterLoginPage extends StatelessWidget {
  static const DASHBOARD_PAGE = "/Dashboard";

  final List<SingleChildCloneableWidget> _providers = [
    ChangeNotifierProvider(
      builder: (context) => AfterLoginProvider(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _providers,
      child: Scaffold(
        body: Container(
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
