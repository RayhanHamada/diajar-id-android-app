import 'package:diajar/pages/dashboard_page/components/menu_title_label.dart';
import 'package:diajar/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class DashboardPage extends StatelessWidget {
  static const DASHBOARD_PAGE = "/Dashboard";

  static final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context);
    return Scaffold(
      key: dashboardProvider.scaffoldKey,
      backgroundColor: Color.fromRGBO(00, 26, 63, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            MenuTitleLabel('Dashboard'),
          ],
        ),
      ),
      drawer: Drawer(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

          ],
        )
      ),
    );
  }
}
