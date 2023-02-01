import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/screen/payment_method_1.dart';

import '../component/button_and_title.dart';

class DeliverToPage extends StatefulWidget {
  const DeliverToPage({Key? key}) : super(key: key);

  static const String routeName = "/deliver_to";

  @override
  State<DeliverToPage> createState() => _DeliverToPageState();
}

class _DeliverToPageState extends State<DeliverToPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin:const EdgeInsets.only(bottom: 24),
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
                  horizontal: 10,
                  vertical: 10,
                ),
                height: 90,
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
                    Container(
                      decoration:  BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Center(
                        child: Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Home',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Bung Tomo St.109',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                height: 90,
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
                      decoration:  BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Center(
                        child: Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Office',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Mayjen SungKono St.55',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
              const Spacer(),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$5',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$32',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$10',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$27',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
                        onPressed: (){
                          Navigator.pushNamed(context, PaymentMethod1Page.routeName);
                        },
                        child: Text(
                          'Next',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: primaryColor
                          ),
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
