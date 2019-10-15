import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.4,
      heightFactor: 0.4,
      child: LoadingIndicator(
        indicatorType: Indicator.ballClipRotateMultiple,
        color: Colors.white,
      ),
    );
  }
}
