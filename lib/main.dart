import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/screen/auth/sign_in_screen.dart';
import 'package:lokapos/screen/auth/sign_up_screen.dart';
import 'package:lokapos/screen/main_screen.dart';
import 'package:lokapos/themes/app_colors.dart';

void main() async {
  AppConfig().runConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lokapos",
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryMain),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/main",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/sign-in":
            return _buildPageRoute(SignInScreen());
          case "/sign-up":
            return _buildPageRoute(SignUpScreen());
          case "/main":
            return _buildPageRoute(MainScreen());
          default:
            return null;
        }
      },
    );
  }
  PageRouteBuilder _buildPageRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(begin: Offset(1.0, 0.0), end: Offset.zero);
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }
}


