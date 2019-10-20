import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;

  FadeRoute({this.page})
      : super(
          pageBuilder: (context, anim, anim2) => page,
          transitionsBuilder: (context, anim, anim2, child) => FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
}
