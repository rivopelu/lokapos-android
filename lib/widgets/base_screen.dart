import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;

  const BaseScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: child,
    );
  }
}
