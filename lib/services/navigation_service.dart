import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

  dynamic pushTo(String route, {dynamic arguments}) {
    return navigatorkey.currentState?.pushNamed(route, arguments: arguments);
  }

  dynamic goBack() {
    return navigatorkey.currentState?.pop();
  }

  dynamic pushWidget(Widget widget) {
    return navigatorkey.currentState?.push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}
