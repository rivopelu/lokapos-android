import 'package:flutter/cupertino.dart';
import 'package:lokapos/screen/main_screen.dart';

class Routes {
  signIn() => "/sign-in";
  root() => "/";
}


final Map<String, WidgetBuilder> appRoutes = {
  Routes().signIn(): (context) => MainScreen(),
  Routes().root(): (context) => MainScreen(),
};
