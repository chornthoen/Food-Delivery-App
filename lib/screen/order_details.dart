import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/component/button_back_and_title.dart';
import 'package:foods/component/search_filter.dart';

import '../common/constants.dart';
import '../models/product.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);
  static const String routeName = "/order_detail";

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAndTitle(
              title: 'Order Details',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: SearchAndFilterWidget(),
            ),
            Expanded(
                child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Slidable(
                        endActionPane:   ActionPane(
                          motion:  ScrollMotion(),
                          extentRatio: 0.25,
                          children: [
                            Container(
                              height: 80,
                              width: 60,
                              //margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.redAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.05),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: const Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(35),
                                      ),
                                    ),
                                    builder: (context) => Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                      height: 240,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(
                                            Icons.delete_outline,
                                            size: 40,
                                            color: primaryColor,
                                          ),
                                          Text(
                                            'Are you sure you want to delete this menu?',
                                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: neutral1Color,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              GestureDetector(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(32),
                                                    border: Border.all(
                                                      color: primaryColor,
                                                      width: 2,
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.only(top: 8, bottom: 8),
                                                  height: 46,
                                                  width: 150,
                                                  child: Text(
                                                    'Cancel',
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1!
                                                        .copyWith(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w600,
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                ),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                              GestureDetector(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(32),
                                                      color: primaryColor),
                                                  padding: const EdgeInsets.only(top: 9, bottom: 8),
                                                  height: 46,
                                                  width: 150,
                                                  child: Text(
                                                    'Yes, delete',
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1!
                                                        .copyWith(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                onTap: () {
                                                  // setState(() {
                                                  //   index = !index;
                                                  // });
                                                },
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.delete_outline,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),

                          ],
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          padding:
                          const EdgeInsets.only(top: 9, bottom: 9, left: 15, right: 20),
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.05),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage(tGreenyImage),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fresh Food',
                                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Lovy Foods',
                                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF858C94),
                                    ),
                                  ),
                                  Text(
                                    '\$33',
                                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 6),
                                padding:const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  '-',
                                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Text(
                                '1',
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 6),
                                padding:const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  '+',
                                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  height: 220,
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
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
                            //Navigator.pushNamed(context, PaymentMethod1Page.routeName);
                          },
                          child: Text(
                            'Place my order',
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
          ],
        ),
      ),
    );
  }
}
