import 'package:flutter/material.dart';
import 'package:foods/component/title_widget.dart';

import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  static const String routeName = "/payment_page";

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
             ButtonBackAngTitle(
              title: "Payment Method",
              onTap: (){
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleName(
              title: 'This data will be displayed in your account profile for security',
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 26,
                            offset: Offset(0, 15),
                          )
                        ]),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: primaryColor,
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage(tPayPalImage),
                        height: 50,
                        width: 85,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: const BoxDecoration(
                      //color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 26,
                            offset: Offset(0, 15),
                          )
                        ]),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color(0xFFEBEEF2),
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage(tVisaImage),
                        height: 20,
                        width: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: const BoxDecoration(
                      //color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 26,
                            offset: Offset(0, 15),
                          )
                        ]),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color(0xFFEBEEF2),
                            width: 2,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Image(
                            image: AssetImage(tPayoneerImage),
                            height: 40,
                            width: 80,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 248,
                  ),
                  ButtonWidget(
                    text: 'Next',
                    onPressed: (){},
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
    );
  }
}
