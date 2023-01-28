import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:foods/models/product.dart';

class RestaurantItemCard extends StatelessWidget {


  const RestaurantItemCard({
    Key? key,
    this.index = 0, required this.products,

  }) : super(key: key);

  final int? index;
  final Product products;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      margin: EdgeInsets.only(
        right: 10,
        bottom: 10,
        left: index == 0 ? 16 : 0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(products.imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            products.title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
          ),
          const SizedBox(height: 5),
          Text(
            products.subtitle,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xFF6D7580)),
          ),
        ],
      ),
    );
  }
}
class RestaurantItemHome extends StatelessWidget {


  const RestaurantItemHome({
    Key? key,
    this.index = 0, required this.title, required this.imagePath, required this.subtitle,

  }) : super(key: key);

  final int? index;
  final String title;
  final String imagePath;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      margin: EdgeInsets.only(
        right: 10,
        bottom: 10,
        left: index == 0 ? 16 : 0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xFF6D7580)),
          ),
        ],
      ),
    );
  }
}
