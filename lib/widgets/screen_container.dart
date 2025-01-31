import 'package:flutter/cupertino.dart';

class ScreenContainer extends StatelessWidget {
  final Widget child;

  const ScreenContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double padding = 16;
    return Padding(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      child: child,
    );
  }
}
