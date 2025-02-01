import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';

class BaseScreen extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  const BaseScreen({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: AppColors.backgroundColor,
      body: child,
    );
  }
}
