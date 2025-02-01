import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/routes.dart';
import 'package:lokapos/services/navigation_service.dart';
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
      navigatorKey: locator<NavigationService>().navigatorkey,
      initialRoute: "/",
      routes: appRoutes,
    );
  }
}


