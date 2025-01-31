import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'history_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  PreferredSizeWidget _currentAppBar = AppBar(title: Text("Default Title"));

  void _updateAppBar(PreferredSizeWidget newAppBar) {
    setState(() {
      _currentAppBar = newAppBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomeScreen(updateAppBar: _updateAppBar),
      HistoryScreen(updateAppBar: _updateAppBar),
    ];

    return Scaffold(
      appBar: _currentAppBar,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}