import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/after_login_provider.dart';

class MenuTitleLabel extends StatelessWidget {
  final String label;

  const MenuTitleLabel(this.label);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<AfterLoginProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            dashboardProvider.scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
