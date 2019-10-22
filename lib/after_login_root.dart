import 'package:diajar/pages/dashboard_page/dashboard_page.dart';
import 'package:flutter/material.dart';

class AfterLoginRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.orange,
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}
