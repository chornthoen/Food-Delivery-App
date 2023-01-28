import 'package:flutter/material.dart';
import 'package:foods/models/menu_product.dart';
import '../component/button_and_title.dart';
import '../component/menu_card.dart';
import '../component/search_filter.dart';

class SeeAllMenu extends StatefulWidget {
  const SeeAllMenu({Key? key}) : super(key: key);
  static const String routeName = "/all_menu";

  @override
  State<SeeAllMenu> createState() => _SeeAllMenuState();
}

class _SeeAllMenuState extends State<SeeAllMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAngTitle(
              title: "Popular Menu",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 5,
            ),
            const SearchAndFilterWidget(),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) => MenuCard(
                      itemIndex: index,
                      product: product[index],

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
