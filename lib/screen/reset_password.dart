import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../component/button_back_and_title.dart';
import '../component/button_widget.dart';
import '../component/check_box_widget.dart';
import '../component/label_and_star.dart';
import '../component/text_field_input.dart';

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
          child: Column(
            children: [
              ButtonBackAndTitle(
                title: "Reset Password",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create a new password',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: blackColor,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ContainerLabelWidget(
                      name: "New Password",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: "New Password",
                      icon: Icons.visibility_off_rounded,
                      obscureText: true,
                    ),
                    const ContainerLabelWidget(
                      name: "Confirm New Password",
                      star: "*",
                    ),
                    const TextFieldInput(
                      hintText: "Confirm New Password",
                      icon: Icons.visibility_off_rounded,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 24,
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
                      height: 340,
                    ),
                    ButtonWidget(
                      text: 'Save',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
