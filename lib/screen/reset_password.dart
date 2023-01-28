import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';
import '../component/labal_star.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);
  static const String routeName = "/reset_password";

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool isRememderMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonBackAngTitle(
                  title: "Reset Password",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 28.5,
                ),
                Text(
                  'Create a new password',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: blackColor,
                      ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const ContainerLabaleWiget(
                  name: "New Password",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
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
                    obscureText: true,
                    keyboardType: TextInputType.datetime,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: const Color(0xFF09101D),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off_rounded),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(
                        left: 24,
                        top: 11,
                      ),
                      hintText: "New Password",
                      hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xFFDADEE3),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const ContainerLabaleWiget(
                  name: "Confirm New Password",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
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
                    obscureText: true,
                    keyboardType: TextInputType.datetime,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: const Color(0xFF09101D),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off_rounded),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(
                        left: 24,
                        top: 11,
                      ),
                      hintText: "Confirm New Password",
                      hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xFFDADEE3),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  height: 306,
                ),
                ButtonWidget(
                  text: 'Save',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
