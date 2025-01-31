import 'package:flutter/material.dart';
import 'package:lokapos/screen/order_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  PreferredSizeWidget _currentAppBar = AppBar(title: Text("Default Title"));

  final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _historyNavigatorKey = GlobalKey<NavigatorState>();

  List<Widget> get _pages => [
    Navigator(
      key: _homeNavigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (_) => HomeScreen(updateAppBar: _updateAppBar));
      },
    ),
    Navigator(
      key: _historyNavigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (_) => OrderScreen(updateAppBar: _updateAppBar));
      },
    ),
  ];

  void _updateAppBar(PreferredSizeWidget newAppBar) {
    setState(() {
      _currentAppBar = newAppBar;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentAppBar,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}