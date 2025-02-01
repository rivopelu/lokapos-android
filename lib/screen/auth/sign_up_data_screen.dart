import 'package:flutter/material.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/screen/auth/sign_in_screen.dart';
import 'package:lokapos/services/navigation_service.dart';
import 'package:lokapos/widgets/MainButton.dart';
import 'package:lokapos/widgets/base_screen.dart';
import 'package:lokapos/widgets/input_text.dart';
import 'package:lokapos/widgets/screen_container.dart';

class SignUpDataScreen extends StatefulWidget {
  final String email;

  const SignUpDataScreen({super.key, required this.email});
  @override
  State<SignUpDataScreen> createState() => _SignUpDataScreenState();
}

class _SignUpDataScreenState extends State<SignUpDataScreen> {
  bool _isShowPassword = false;

  void _onSubmit() {
    locator<NavigationService>().pushWidget(SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    String email = widget.email;

    return BaseScreen(
        appBar: AppBar(
          title: Text("Sign up"),
        ),
        child: ScreenContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Halo, $email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("insert your other information for sign up"),
                SizedBox(
                  height: 24,
                ),
                Column(
                  spacing: 12,
                  children: [
                    InputText(
                      label: "First name",
                      placeholder: "Insert first name",
                      required: true,
                    ),
                    InputText(
                      label: "Last name",
                      placeholder: "Insert last name",
                      required: true,
                    ),
                    InputText(
                      keyboardType: _isShowPassword
                          ? TextInputType.visiblePassword
                          : null,
                      isSecureText: !_isShowPassword,
                      label: "password",
                      placeholder: "Insert password",
                      required: true,
                    ),
                    InputText(
                      keyboardType: _isShowPassword
                          ? TextInputType.visiblePassword
                          : null,
                      isSecureText: !_isShowPassword,
                      label: "confirmation password",
                      placeholder: "Insert password confirmation",
                      required: true,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          value: _isShowPassword,
                          onChanged: (bool? value) {
                            setState(() {
                              _isShowPassword = value!;
                            });
                          },
                        ),
                        Text("show password")
                      ],
                    ),
                    MainButton(
                      label: "Sign Up",
                      onPress: _onSubmit,
                    )
                  ],
                )
              ],
            )
          ],
        )));
  }
}
