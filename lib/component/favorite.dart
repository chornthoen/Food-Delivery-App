import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../models/favorite_model.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard(
      {Key? key, required this.itemIndex, required this.products})
      : super(key: key);

  final int itemIndex;
  final ProductF products;

  @override
  Widget build(BuildContext context) {
    bool index = false;
    return Container(
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
              image: AssetImage(products.imagePath),
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
                  products.title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                ),
                Text(
                  products.subtitle,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF858C94),
                      ),
                ),
                Text(
                  '\$${products.price}',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35),
                  ),
                ),
                builder: (context) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        size: 40,
                        color: primaryColor,
                      ),
                      Text(
                        'Remove from favorite?',
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
                                'Yes, remove',
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
              Icons.favorite,
              size: 35,
            ),
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
