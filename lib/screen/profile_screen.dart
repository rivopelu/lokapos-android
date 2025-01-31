import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  const ProfileScreen({super.key, required this.updateAppBar});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateAppBar(
        AppBar(
          title: Text("PROFILE"),
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
