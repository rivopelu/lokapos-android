import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';
import 'package:lokapos/themes/app_size.dart';

class MainCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final bool? border;
  final VoidCallback? onTab;

  const MainCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.border = true,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: AnimatedScale(
        scale: onTab == null ? 1.0 : 1,
        duration: Duration(milliseconds: 150),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.borderRadius)),
            border: border == true
                ? Border.all(
              color: AppColors.borderColors,
            )
                : null,
          ),
          child: child,
        ),
      ),
    );
  }
}