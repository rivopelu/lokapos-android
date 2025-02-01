import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/screen/auth/sign_up_data_screen.dart';
import 'package:lokapos/services/navigation_service.dart';
import 'package:lokapos/widgets/MainButton.dart';
import 'package:lokapos/widgets/input_text.dart';
import 'package:lokapos/widgets/screen_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();

  void _onSubmit() {
    if (_emailController.text.isNotEmpty) {
      locator<NavigationService>()
          .pushWidget(SignUpDataScreen(email: _emailController.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: ScreenContainer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign up",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text("Insert your email for sign up"),
              SizedBox(
                height: 32,
              ),
              InputText(
                controller: _emailController,
                label: "Email",
                placeholder: "Insert your email",
                required: true,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 32,
              ),

              MainButton(
                onPress: _onSubmit,
                label: "SIGN UP",
              )
            ],
          ),
        ),
      ),
    );
  }
}
