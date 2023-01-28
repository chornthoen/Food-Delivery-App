import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';
import 'forgot_password_page.dart';

class ForgotPasswordSelect extends StatefulWidget {
  const ForgotPasswordSelect({Key? key}) : super(key: key);

  static const String routeName = "forgot_pass_select";

  @override
  State<ForgotPasswordSelect> createState() => _ForgotPasswordSelectState();
}

class _ForgotPasswordSelectState extends State<ForgotPasswordSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             ButtonBackAngTitle(
              title: "forgot password?",
              onTap: (){},
            ),
            const SizedBox(
              height: 28.5,
            ),
            Text(
              'Select which contact details should we use to reset your password',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                    color: blackColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 128,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Color(0xffFF1843),
                    width: 2,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 26,
                    offset: Offset(0, 15),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        Container(
                          width: 78,
                          height: 78,
                          padding: const EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 78,
                            height: 78,
                            padding: const EdgeInsets.only(
                              top: 0.5,
                              left: 3,
                              right: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, ForgotPasswordPage.routeName);
                              },
                              icon: const Icon(
                                Icons.chat,
                                color: Color(0xFFF43F5E),
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "via SMS:",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF6D7580)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "+6282******39",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFF09101D)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 128,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Color(0xffEBEEF2),
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 26,
                    offset: Offset(0, 15),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        Container(
                          width: 78,
                          height: 78,
                          padding: const EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 78,
                            height: 78,
                            padding: const EdgeInsets.only(
                              top: 0.5,
                              left: 3,
                              right: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.email,
                                color: Color(0xFFF43F5E),
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "via Email:",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF6D7580)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "ex***le@yourdomain.com",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF09101D)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            ButtonWidget(
              text: 'Next',
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
