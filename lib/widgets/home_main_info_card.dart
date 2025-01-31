import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';

class HomeMainInfoCard extends StatelessWidget {
  const HomeMainInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.borderColors),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      child: Padding(padding: EdgeInsets.all(40), child: Text("HELLO")),
    );
  }
}
