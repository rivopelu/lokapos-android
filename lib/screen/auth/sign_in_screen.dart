import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lokapos/themes/app_colors.dart';
import 'package:lokapos/widgets/MainButton.dart';
import 'package:lokapos/widgets/input_text.dart';
import 'package:lokapos/widgets/screen_container.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isShowPassword = false;
  String _version  = "";

  void _onSubmit() {
    var data = {
      "email": _emailController.text,
      "password": _passwordController.text
    };
    if (kDebugMode) {
      print(data);
    }
  }

  @override
  void initState() {
    _getInfo();
    super.initState();
  }

  void _getInfo () async{
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _version = info.version;
    });
  }


  Color getColor(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{
      WidgetState.pressed,
      WidgetState.hovered,
      WidgetState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In"),
        backgroundColor: Colors.white10,
      ),
      body: ScreenContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "LOKAPOS",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryMain),
                ),
              ),
            ),
            Column(
              spacing: 14,
              children: [
                InputText(
                  controller: _emailController,
                  label: "Email",
                  placeholder: "Insert email",
                  required: true,
                ),
                InputText(
                  controller: _passwordController,
                  label: "Password",
                  placeholder: "Insert password",
                  required: true,
                  isSecureText: !_isShowPassword,
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
                  label: "SIGN IN",
                  onPress: _onSubmit,
                ),
                Divider(),
                Text("Don't have account ?"),
                MainButton(
                  label: "SIGN UP HERE",
                  onPress: _onSubmit,
                ),
              ],
            ),
            SizedBox(height: 120, child: Text("V $_version")),
          ],
        ),
      ),
    );
  }
}
