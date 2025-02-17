import 'package:flutter/cupertino.dart';
import 'package:lokapos/themes/app_size.dart';

class ScreenContainer extends StatelessWidget {
  final Widget child;

  const ScreenContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(AppSize.containerPadding, 0, AppSize.containerPadding, 0),
      child: child,
    );
  }
}
