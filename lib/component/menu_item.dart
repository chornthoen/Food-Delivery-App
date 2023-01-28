import 'package:flutter/material.dart';

import '../common/constants.dart';
class MenuItems extends StatelessWidget {
  const MenuItems({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, right: 18, left: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 80,
      //width: MediaQuery.of(context).size.width,
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
            height: 50,
            width: 50,
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
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
              ],
            ),
          ),
          Text(
            price,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}