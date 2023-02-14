import 'package:flutter/material.dart';
import 'package:foods/models/order_history_models.dart';
import '../component/order_history_card.dart';
import '../component/search_filter.dart';
import 'order_details.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  static const String routeName = '/orders_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Column(
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
                  height: 10,
                ),
                SearchAndFilterWidget(
                  onTab: () {
                    Navigator.pushNamed(context, OrderDetailsPage.routeName);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: orderHistoryModels.length,
                  itemBuilder: (context, index) => OrderHistoryCard(
                    orderHistoryModel: orderHistoryModels[index],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

