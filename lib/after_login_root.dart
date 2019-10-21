import 'package:diajar/pages/dashboard_page/dashboard_page.dart';
import 'package:flutter/material.dart';


class AfterLoginRoot extends StatelessWidget {

  static final Map<String, Widget Function(BuildContext)> _routes = {

  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.orange,
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      routes: _routes,
    );
  }
}
