import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/screen/sign_up_page.dart';
import 'dart:ui';

import '../common/image_string.dart';
import '../component/button_widget.dart';
import '../component/button_with_app.dart';
import '../component/check_box_widget.dart';
import '../component/label_and_star.dart';
import '../component/text_field_input.dart';
import '../component/title_and_button.dart';
import 'forgot_password1_page.dart';
import 'main_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String routeName = '/sign_in';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isRememderMe = false;

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 180,
                          width: 150,
                          child: Image(
                            image: AssetImage(tLogoImage),
                          ),
                        ),
                        Text(
                          'Sign in to your account',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const ContainerLabelWidget(
                    name: "Email",
                    star: "*",
                  ),
                  TextFieldInput(
                    hintText: 'Email or Phone Number',
                    controller: _emailController,
                  ),
                  const ContainerLabelWidget(
                    name: "Password",
                    star: "*",
                  ),
                  TextFieldInput(
                    hintText: 'Password',
                    controller: _passwordController,
                    icon: Icons.visibility,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CheckBoxWidget(
                    text: 'Remember me',
                    value: isRememderMe,
                    onChanged: (value) {
                      setState(() {
                        isRememderMe = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    text: 'Sign in',
                    onPressed: (){
                      Navigator.pushNamed(context, MainPage.routeName);
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordSelect.routeName);
                    },
                    child: Text(
                      "Forgot the password?",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Text(
                    "or continue with",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: const Color(0xFF09101D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWithApp(
                        name: "Facebook",
                        imagePath: tIconBFImage,
                        onPressed: () {},
                      ),
                      ButtonWithApp(
                        name: "Google",
                        imagePath: tIconGoogleImage,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  TitleAndButton(
                    text: "Don't have an account?",
                    buttonText: "Sign in",
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpPage.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
