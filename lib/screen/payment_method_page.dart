import 'package:flutter/material.dart';

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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
        child: Column(
          children: [
             ButtonBackAngTitle(
              title: "Payment Method",
              onTap: (){},
            ),
            const SizedBox(
              height: 28.5,
            ),
            Text(
              'This data will be displayed in your account profile for security',
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
