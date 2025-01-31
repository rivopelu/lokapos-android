import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.primaryMain,
            title: Text("HOME PAGE"),
          ),
          body: Column(
            spacing: 12,
            children: [
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
              Text("HELLO WORLD"),
            ],
          ),
        ));
  }
}


