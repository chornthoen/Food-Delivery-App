import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';

import '../common/image_string.dart';
import '../component/button_widget.dart';

class CongratsPasswordSuccessfulPage extends StatefulWidget {
  const CongratsPasswordSuccessfulPage({Key? key}) : super(key: key);
  static const String routeName = "/congrats_pass_success";

  @override
  State<CongratsPasswordSuccessfulPage> createState() => _CongratsPasswordSuccessfulPageState();
}

class _CongratsPasswordSuccessfulPageState extends State<CongratsPasswordSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(tBgCongratsImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    width: MediaQuery.of(context).size.width,
                    //height: 380,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage(tCongrateImage),
                          height: 177,
                          width: 173,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Congrats!",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password reset successful",
                          style:
                          Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: blackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        ButtonWidget(
                          text: 'OK',
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
