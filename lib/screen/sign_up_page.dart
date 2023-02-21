import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/component/button_with_app.dart';
import 'package:foods/screen/main_page.dart';
import 'package:foods/screen/sign_in_page.dart';
import 'dart:ui';

import '../common/image_string.dart';
import '../component/button_widget.dart';
import '../component/check_box_widget.dart';
import '../component/label_and_star.dart';
import '../component/text_field_input.dart';
import '../component/title_and_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String routeName = '/sign_up';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        backgroundColor: bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
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
                          'Sign up for free',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
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
                    obscureText: true,
                    onPressed: () {
                    },
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
                    text: 'Sign up',
                    onPressed: () {
                      Navigator.pushNamed(context, MainPage.routeName);
                    },
                  ),
                  const SizedBox(
                    height: 20,
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
                    height: 30,
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
                  const SizedBox(
                    height: 10,
                  ),
                  TitleAndButton(
                    text: "Already have an account?",
                    buttonText: "Sign in",
                    onPressed: () {
                      Navigator.pushNamed(context, SignInPage.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
