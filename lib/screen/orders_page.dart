import 'package:flutter/material.dart';
import 'package:foods/common/image_string.dart';

import '../common/constants.dart';
import '../component/search_filter.dart';
import 'order_details.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  static const String routeName = '/orders_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Order History',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
               SearchAndFilterWidget(
                onTab: (){
                  Navigator.pushNamed(context, OrderDetailsPage.routeName);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              buildContainer(
                context,
                image: tGreenyImage,
                name: "Greeny Salad",
                subtitle: 'Lovy Food',
                price: '\$12',
                success: 'Process',
                color: const Color(0xFF23A757),
              ),
              const SizedBox(
                height: 30,
              ),
              buildContainer(
                context,
                image: tMediumImage,
                name: "Medium Salad",
                subtitle: 'Circlo Resto',
                price: '\$11',
                success: 'Process',
                color: const Color(0xFF23A757),
              ),
              const SizedBox(
                height: 30,
              ),
              buildContainer(
                context,
                image: tFreshSaladImage,
                name: "Fresh Salad",
                subtitle: 'Recto Food',
                price: '\$9',
                success: 'Completed',
                color: const Color(0xFF2E5AAC),
              ),
              const SizedBox(
                height: 30,
              ),
              buildContainer(
                context,
                image: tOriginalSaladImage,
                name: "Greeny Salad",
                subtitle: 'Haty Food',
                price: '\$10',
                success: 'Canceled',
                color: const Color(0xFFDA1414),              ),
              const SizedBox(
                height: 30,
              ),
              buildContainer(
                context,
                image: tGreenyImage,
                name: "Greeny Salad",
                subtitle: 'Lovy Food',
                price: '\$12',
                success: 'Process',
                color: const Color(0xFF23A757),

              ),
              const SizedBox(
                height: 30,
              ),
              buildContainer(
                context,
                image: tGreenyImage,
                name: "Greeny Salad",
                subtitle: 'Lovy Food',
                price: '\$12',
                success: 'Process',
                color: const Color(0xFF23A757),

              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(
    BuildContext context, {
    required String image,
    required String name,
    required String subtitle,
    required String price,
    required String success,
        Color? color,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 9, bottom: 9, left: 15, right: 20),
      height: 85,
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
        border: Border.all(
          color: Colors.grey.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            // height: 50,
            // width: 50,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF858C94),
                      ),
                ),
                Text(
                  price,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: primaryColor,
                      ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: color,
              //color: const Color(0xFF23A757),
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              success,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
