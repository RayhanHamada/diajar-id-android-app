import 'package:diajar/pages/reusable_components/after_login_drawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
      ),
      drawer: AfterLoginDrawer(
        activeDrawer: CurrentActiveDrawer.PROFILE,
      ),
    );
  }
}
