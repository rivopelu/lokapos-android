import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function(PreferredSizeWidget) updateAppBar;

  const HomeScreen({super.key, required this.updateAppBar});

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulasi refresh
    if (kDebugMode) {
      print('Data refreshed!');
    }
  }

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

    int itemCount = 40;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: itemCount, // Jumlah item dalam list
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${index + 1}'), // Menampilkan nomor item
            );
          },
        ),
      ),
    );
  }
}