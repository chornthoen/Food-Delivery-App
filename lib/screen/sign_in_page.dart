import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/screen/forgot_password_page.dart';
import 'package:foods/screen/sign_up_page.dart';
import 'dart:ui';

import '../common/constants.dart';
import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/labal_star.dart';
import 'forgot_password1_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String routeName = '/sign_in';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isRememderMe = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                  const ContainerLabaleWiget(
                    name: "Email",
                    star: "*",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 25,
                          offset: Offset(1, 10),
                        )
                      ],
                    ),
                    // height: 60,
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xFF09101D),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 24),
                        hintText: 'Email or Phone Number',
                        hintStyle:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  color: const Color(0xFFDADEE3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ContainerLabaleWiget(
                    name: "Password",
                    star: "*",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 25,
                          offset: Offset(1, 10),
                        )
                      ],
                    ),
                    //height: 60,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xFF09101D),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Color(0xFF858C94),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                          left: 24,
                          top: 14,
                        ),
                        hintText: 'Password',
                        hintStyle:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  color: const Color(0xFFDADEE3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    height: 16,
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: primaryColor),
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            value: isRememderMe,
                            checkColor: Colors.white,
                            activeColor: primaryColor,
                            onChanged: (value) {
                              setState(() {
                                isRememderMe = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          "Remember me",
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                color: neutral1Color,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 45,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 26,
                              offset: Offset(0, 15),
                            )
                          ],
                        ),
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(tIconBFImage),
                            width: 25,
                            height: 20,
                          ),
                          label: Text(
                            "Facebook",
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: const Color(0xFF09051C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFFF4F6F9),
                            ),
                            backgroundColor: Colors.white,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 45,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 26,
                              offset: Offset(0, 15),
                            )
                          ],
                        ),
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(tIconGoogleImage),
                            width: 25,
                            height: 20,
                          ),
                          label: Text(
                            "Google",
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: const Color(0xFF09051C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFFF4F6F9),
                            ),
                            backgroundColor: Colors.white,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: const Color(0xFF858C94),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpPage.routeName);
                        },
                        child: Text(
                          "Sign up",
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                                color: const Color(0xFFF43F5E),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
