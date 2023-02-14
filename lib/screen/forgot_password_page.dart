import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/constants.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';
import '../component/otp_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);
  static const String routeName = "/forgot_password";

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               ButtonBackAngTitle(
                title: "forgot password",
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 190,
              ),
              Text(
                'Code has been send to +6282******39',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: blackColor,
                    ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Otp(),
                  Otp(),
                  Otp(),
                  Otp(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend code in',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    ' 56',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    ' s',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
               const SizedBox(
                height: 240,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ButtonWidget(
                  text: 'Next',
                  onPressed: (){},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
