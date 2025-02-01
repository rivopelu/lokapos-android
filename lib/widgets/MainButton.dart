import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String? label;
  final bool disabled;

  const MainButton(
      {super.key, this.onPress, this.label, this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            foregroundColor: Colors.white,
            backgroundColor: AppColors.primaryMain,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          onPressed: disabled == true ? null : onPress,
          child: Text(label ?? '')),
    );
  }
}
