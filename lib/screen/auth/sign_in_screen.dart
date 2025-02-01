import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lokapos/configs/app_config.dart';
import 'package:lokapos/providers/auth_provider.dart';
import 'package:lokapos/screen/auth/sign_up_screen.dart';
import 'package:lokapos/services/navigation_service.dart';
import 'package:lokapos/themes/app_colors.dart';
import 'package:lokapos/widgets/MainButton.dart';
import 'package:lokapos/widgets/input_text.dart';
import 'package:lokapos/widgets/screen_container.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isShowPassword = false;
  String _version  = "";

  void _onSubmit() {
      ref.read(authProvider.notifier).signIn(
          _emailController.text,
          _passwordController.text,
        );
  }

  @override
  void initState() {
    _getInfo();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authProvider.notifier).clearError();
    });
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
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign In"),
        backgroundColor: Colors.white10,
      ),
      body: SingleChildScrollView(
        child: ScreenContainer(
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
                    keyboardType: TextInputType.emailAddress,
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
                    loading: authState.isLoading,
                    label: "SIGN UP HERE",
                    onPress: (){
                      locator<NavigationService>().pushWidget(SignUpScreen());
                    },
                  ),
                ],
              ),
              SizedBox(height: 120, child: Text("V $_version")),
            ],
          ),
        ),
      ),
    );
  }
}
