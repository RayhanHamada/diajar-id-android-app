import 'package:diajar/pages/reusable_components/after_login_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatelessWidget {
  static const DASHBOARD_PAGE = "/AfterLoginPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
      drawer: AfterLoginDrawer(),
    );
  }
}
