import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  HomeScreen({required this.updateAppBar});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateAppBar(
        AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      );
    });

    return Center(child: Text("This is Home Page"));
  }
}