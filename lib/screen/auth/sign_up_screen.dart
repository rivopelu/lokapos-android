import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/main");
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
