import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (kDebugMode) {
              print("Item $index clicked");
            }
          },
          borderRadius: BorderRadius.circular(8), // Optional: Rounded corners
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              // Optional: Match ripple effect
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child: Text(
              "Item $index",
              style: TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
