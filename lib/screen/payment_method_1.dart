import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/screen/set_location.dart';

import '../component/button_and_title.dart';

class PaymentMethod1Page extends StatefulWidget {
  const PaymentMethod1Page({Key? key}) : super(key: key);

  static const String routeName = "/payment_method_1";

  @override
  State<PaymentMethod1Page> createState() => _PaymentMethod1PageState();
}

class _PaymentMethod1PageState extends State<PaymentMethod1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(bottom: 24),
          child: Column(
            children: [
              ButtonBackAngTitle(
                title: 'Deliver to',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                height: 75,
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
                  border: Border.all(
                    width: 2,
                    color: primaryColor,
                  ),
                ),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage(tPayPalImage,),
                      height: 70,
                      width: 80,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Spacer(),
                    Text(
                      '+6282******39',
                      style:
                          Theme.of(context).textTheme.subtitle1!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                height: 75,
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
                    const Image(
                      image: AssetImage(tVisaImage,),
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Spacer(),
                    Text(
                      '3821 **** **** **58',
                      style:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                height: 75,
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
                    const Image(
                      image: AssetImage(tPayoneerImage,),
                      height: 70,
                      width: 80,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Spacer(),
                    Text(
                      '4627 **** **** **65',
                      style:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),

              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 230,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: primaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Subtotal',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                        ),
                        const Spacer(),
                        Text(
                          '\$5',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Delivery charge',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                        ),
                        Spacer(),
                        Text(
                          '\$32',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Discount',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                        ),
                        Spacer(),
                        Text(
                          '\$10',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    Container(
                      height: 2,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Text(
                          'Total',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                        ),
                        Spacer(),
                        Text(
                          '\$27',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SetLocation.routeName);
                        },
                        child: Text(
                          'Next',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: primaryColor),
                        ),
                      ),
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
