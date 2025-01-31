import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/screen/auth/sign_in_screen.dart';
import 'package:lokapos/screen/auth/sign_up_screen.dart';
import 'package:lokapos/screen/main_screen.dart';

void main() async {
  AppConfig().runConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/sign-in",
      routes: {
        "/sign-in": (context) => SignInScreen(),
        "/sign-up": (context) => SignUpScreen(),
        "/main": (context) => MainScreen(),
      },
    );
  }
}


