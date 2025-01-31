import 'package:flutter/material.dart';

class PromoScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  const PromoScreen({super.key, required this.updateAppBar});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateAppBar(
        AppBar(
          title: Text("PROMO"),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            ),
          ],
        ),
      );
    });

    return Center(child: Text("This is History Page"));
  }
}
