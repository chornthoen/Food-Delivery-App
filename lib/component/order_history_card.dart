import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../models/order_history_models.dart';


class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({Key? key, required this.orderHistoryModel})
      : super(key: key);

  final OrderHistoryModel orderHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
      height: 85,
      padding:const EdgeInsets.only(right: 24,left: 10,top: 10,bottom: 10),
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
              image: AssetImage(orderHistoryModel.img),
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
                  orderHistoryModel.name,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  orderHistoryModel.subtitle,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF858C94),
                  ),
                ),
                Text(
                  '\$${orderHistoryModel.price}',
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
              color: orderHistoryModel.status == 'Process'
                  ? Colors.green
                  : orderHistoryModel.status == 'Completed'
                  ? Colors.indigo
                  : Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              orderHistoryModel.status,
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