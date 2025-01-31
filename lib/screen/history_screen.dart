import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  const HistoryScreen({super.key, required this.updateAppBar});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateAppBar(
        AppBar(
          title: Text("History Page"),
          backgroundColor: Colors.red,
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