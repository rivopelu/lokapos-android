import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  const OrderScreen({super.key, required this.updateAppBar});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateAppBar(
        AppBar(
          title: Text("ORDER"),
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