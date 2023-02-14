import 'package:flutter/material.dart';
import 'package:foods/component/title_widget.dart';
import 'package:foods/screen/forgot_password_page.dart';
import '../common/constants.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonBackAngTitle(
              title: "forgot password?",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 24,
            ),
            const TitleName(
              title:
                  'Select which contact details should we use to reset your password',
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.08),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: const Center(
                      child: Icon(
                        Icons.chat,
                        size: 26,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'via SMS:',
                        style:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+6282******39',
                        style:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.08),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: const Center(
                      child: Icon(
                        Icons.email,
                        size: 26,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'via Email',
                        style:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ex***le@yourdomain.com',
                        style:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, ForgotPasswordPage.routeName);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
