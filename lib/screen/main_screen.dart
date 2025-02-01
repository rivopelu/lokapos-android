import 'package:flutter/material.dart';
import 'package:lokapos/screen/order/order_screen.dart';
import 'package:lokapos/screen/promo/promo_screen.dart';

import 'home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  PreferredSizeWidget _currentAppBar = AppBar(title: Text("Default Title"));

  final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _orderNavigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _promoNavigatorKey = GlobalKey<NavigatorState>();

  List<Widget> get _pages => [
    Navigator(
      key: _homeNavigatorKey,
      onGenerateRoute: (settings) {
            return MaterialPageRoute(
                builder: (_) => HomeScreen(
                      updateAppBar: _updateAppBar,
                    ));
          },
        ),
    Navigator(
      key: _orderNavigatorKey,
      onGenerateRoute: (settings) {
            return MaterialPageRoute(builder: (_) => OrderScreen(updateAppBar: _updateAppBar));
      },
    ),
    Navigator(
      key: _promoNavigatorKey,
      onGenerateRoute: (settings) {
              return MaterialPageRoute(
                  builder: (_) => PromoScreen(updateAppBar: _updateAppBar));
            }),
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
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Promo'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}