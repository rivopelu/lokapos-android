import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';
import 'package:lokapos/themes/app_size.dart';
import 'package:lokapos/widgets/first_menu_card.dart';
import 'package:lokapos/widgets/screen_container.dart';

class SpecialForTodayCarouseList extends StatelessWidget {
  const SpecialForTodayCarouseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppSize.containerPadding,
          ),
          ScreenContainer(
            child: Text(
              "Special hari ini hanya untuk kamu !",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: AppSize.containerPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Enable horizontal scrolling
            child: Row(
              children: [
                SizedBox(
                  width: AppSize.containerPadding,
                ),
                Row(
                  spacing: AppSize.paddingXs,
                  children: List.generate(8, (index) => FirstMenuCard()),
                ),
                SizedBox(
                  width: AppSize.containerPadding,
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppSize.containerPadding * 2,
          ),
        ],
      ),
    );
  }
}