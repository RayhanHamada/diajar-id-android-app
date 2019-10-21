import 'package:diajar/pages/dashboard_page/components/drawer_head.dart';
import 'package:diajar/pages/dashboard_page/dashboard_page.dart';
import 'package:diajar/pages/profile_page/profile_page.dart';
import 'package:diajar/pages/reusable_components/fade_route.dart';
import 'package:flutter/material.dart';

enum CurrentActiveDrawer { DASHBOARD, PROFILE, SETTING }

class AfterLoginDrawer extends StatelessWidget {
  final CurrentActiveDrawer activeDrawer;

  const AfterLoginDrawer({this.activeDrawer = CurrentActiveDrawer.DASHBOARD})
      : super();

  @override
  Widget build(BuildContext context) {
    var drawerOptions = [
      [
        Icons.dashboard,
        "Dashboard",
        false,
        () =>
            Navigator.pushReplacement(context, FadeRoute(page: DashboardPage()))
      ],
      [
        Icons.person,
        "Profile",
        false,
        () => Navigator.pushReplacement(context, FadeRoute(page: ProfilePage()))
      ],
      [Icons.settings, "Settings", false, () {}],
    ];

    switch (activeDrawer) {
      case CurrentActiveDrawer.DASHBOARD:
        drawerOptions[0][2] = true;
        break;
      case CurrentActiveDrawer.PROFILE:
        drawerOptions[1][2] = true;
        break;
      case CurrentActiveDrawer.SETTING:
        drawerOptions[2][2] = true;
        break;
    }

    return Drawer(
      child: Container(
        color: Color.fromRGBO(00, 26, 63, 1),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            DrawerHead(),
            ...drawerOptions.map((drawerop) {
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      drawerop[0],
                      color:
                          drawerop[2] ? Colors.deepOrangeAccent : Colors.white,
                    ),
                    title: Text(
                      drawerop[1],
                      style: TextStyle(
                        color: drawerop[2]
                            ? Colors.deepOrangeAccent
                            : Colors.white,
                      ),
                    ),
                    onTap: drawerop[3],
                  ),
                  Divider(
                    color: Colors.white,
                    indent: 20,
                  ),
                ],
              );
            }),
            Expanded(
              child: Container(),
            ),
            Column(
              children: <Widget>[
                Divider(
                  color: Colors.white,
                  indent: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
