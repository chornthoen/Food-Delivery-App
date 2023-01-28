import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../common/image_string.dart';
import '../component/menu_item.dart';
import '../component/search_filter.dart';

class SeeAllPopularMenuPage extends StatefulWidget {
  const SeeAllPopularMenuPage({Key? key}) : super(key: key);
  static const String routeName = "/see_all_menu";

  @override
  State<SeeAllPopularMenuPage> createState() => _SeeAllPopularMenuPageState();
}

class _SeeAllPopularMenuPageState extends State<SeeAllPopularMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //leadingWidth: 56,
            leading: Container(
              //height: 20,
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.only(left: 16,top: 10),
              child: IconButton(
                splashRadius: 15,
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFFF43F5E),
                  size: 20,
                ),
              ),
            ),
            title: Text(
              "Popular Menu",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const _TopSearchCustomAppBar(),
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 10, (context, index) {
              return  const MenuItems(
                imagePath: tOriginalSaladImage,
                title: "Original Salad",
                subtitle: "Lovy Food",
                price: "\$8",
              );
            }),
          )
        ],
      ),
    );
  }
}

class _TopSearchCustomAppBar extends StatelessWidget {
  const _TopSearchCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _TopSearchCustomAppBarDelegate(
        minHeight: 120,
        maxHeight: 120,
        child: const SearchAndFilterWidget(),
      ),
    );
  }
}

class _TopSearchCustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TopSearchCustomAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_TopSearchCustomAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class Product {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  Product({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  static List<Product> getProducts() {
    return [
      Product(
        imagePath: tOriginalSaladImage,
        title: "Original Salad",
        subtitle: "Lovy Food",
        price: "\$8",
      ),
      Product(
        imagePath: tFreshSaladImage,
        title: "Fresh Salad",
        subtitle: "Lovy Food",
        price: "\$10",
      ),
      Product(
        imagePath: tYummieIceCreamImage,
        title: "Yummie Ice Cream",
        subtitle: "Lovy Food",
        price: "\$6",
      ),
      Product(
        imagePath: tOriginalSaladImage,
        title: "Original Salad",
        subtitle: "Lovy Food",
        price: "\$8",
      ),
      Product(
        imagePath: tOriginalSaladImage,
        title: "Original Salad",
        subtitle: "Lovy Food",
        price: "\$8",
      ),
      Product(
        imagePath: tOriginalSaladImage,
        title: "Original Salad",
        subtitle: "Lovy Food",
        price: "\$8",
      ),
    ];
  }
}
