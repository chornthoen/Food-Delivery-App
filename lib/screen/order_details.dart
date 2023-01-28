import 'package:flutter/material.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/component/button_and_title.dart';
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
            ButtonBackAngTitle(
              title: 'Order Details',
              onTap: () {},
            ),
            const SearchAndFilterWidget(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: const EdgeInsets.only(top: 9, bottom: 9, left: 15, right: 20),
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
                children: [
                  SizedBox(
                    child: Image(
                      image: AssetImage(tGreenyImage),
                    ),
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
                  Row(
                    children: [
                      Container(

                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: TextButton(
                          onPressed: (){},
                          child: Icon(Icons.minimize_rounded)
                        )
                      ),
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
