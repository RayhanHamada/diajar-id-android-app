import 'package:flutter/material.dart';

enum SlideFrom {
  LEFT_UP,
  CENTER_UP,
  RIGHT_UP,
  RIGHT_MIDDLE,
  RIGHT_BOTTOM,
  CENTER_BOTTOM,
  LEFT_BOTTOM,
  LEFT_MIDDLE,
}

class SlideRoute extends PageRouteBuilder {
  final Widget page;
  final SlideFrom direction;

  SlideRoute({this.page, this.direction = SlideFrom.RIGHT_MIDDLE})
      : super(
            pageBuilder: (context, anim, secondAnim) => page,
            transitionsBuilder: (context, anim, secondAnim, child) {
              Offset offset;
              switch (direction) {
                case SlideFrom.LEFT_UP:
                  offset = const Offset(-1, -1);
                  break;
                case SlideFrom.CENTER_UP:
                  offset = const Offset(0, -1);
                  break;
                case SlideFrom.RIGHT_UP:
                  offset = const Offset(1, -1);
                  break;
                case SlideFrom.RIGHT_MIDDLE:
                  offset = const Offset(1, 0);
                  break;
                case SlideFrom.RIGHT_BOTTOM:
                  offset = const Offset(1, 1);
                  break;
                case SlideFrom.CENTER_BOTTOM:
                  offset = const Offset(0, 1);
                  break;
                case SlideFrom.LEFT_BOTTOM:
                  offset = const Offset(-1, 1);
                  break;
                case SlideFrom.LEFT_MIDDLE:
                  offset = const Offset(-1, 0);
                  break;
              }

              return SlideTransition(
                position: Tween<Offset>(
                  begin: offset,
                  end: Offset.zero,
                ).animate(anim),
                child: child,
              );
            });
}
