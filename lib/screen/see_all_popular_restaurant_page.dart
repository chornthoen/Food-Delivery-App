// import 'package:flutter/material.dart';
//
// import '../common/constants.dart';
// import '../common/image_string.dart';
// import '../component/button_and_title.dart';
// import '../component/restaurant_item.dart';
//
// class SeeAllPopularRestaurant extends StatefulWidget {
//   const SeeAllPopularRestaurant({Key? key}) : super(key: key);
//
//   static const String routeName = "/see_all_popular_restaurant";
//
//   @override
//   State<SeeAllPopularRestaurant> createState() =>
//       _SeeAllPopularRestaurantState();
// }
//
// class _SeeAllPopularRestaurantState extends State<SeeAllPopularRestaurant> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 child: ButtonBackAngTitle(
//                   title: "Popular Restaurant",
//                   onTap: () {},
//                 ),
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 20),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFFF4F6F9),
//                         borderRadius: BorderRadius.circular(50),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.blue.withOpacity(0.04),
//                             spreadRadius: 1,
//                             blurRadius: 5,
//                             offset: const Offset(
//                                 0, 1), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: TextField(
//                               //enabled: false,
//                               decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 contentPadding: const EdgeInsets.symmetric(
//                                     horizontal: 16, vertical: 16),
//                                 hintText: 'Search',
//                                 helperStyle: Theme.of(context)
//                                     .textTheme
//                                     .subtitle1!
//                                     .copyWith(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w700,
//                                       color: const Color(0xFF09101D),
//                                     ),
//                                 suffixIcon: const Icon(Icons.search),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.redAccent.withOpacity(0.2),
//                       borderRadius: BorderRadius.circular(12),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.blue.withOpacity(0.04),
//                           spreadRadius: 1,
//                           blurRadius: 5,
//                           offset:
//                               const Offset(0, 1), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: IconButton(
//                       onPressed: () {
//                         print('Filter');
//                       },
//                       splashRadius: 1,
//                       icon: const Icon(
//                         Icons.filter_list,
//                         color: primaryColor,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                 ],
//               ),
//               GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisExtent: 10,
//                   crossAxisSpacing: 20,
//                 ),
//                 itemBuilder: (context,index){
//                   return RestaurantItemCard(
//                     index: 5,
//                     title: 'Recto Food',
//                     subtitle: '15 min',
//                     imagePath: tRectoFoodImage,
//                   );
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/models/product.dart';

import '../component/restaurant_item.dart';
import '../component/search_filter.dart';

class SeeAllPopularRestaurant extends StatelessWidget {
  const SeeAllPopularRestaurant({Key? key}) : super(key: key);

  static const String routeName = '/popular_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Popular Restaurant',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            floating: false,
            pinned: false,
            leadingWidth: 56,
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
          ),
          _TopSearchCustomAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.9,
              ),

              delegate: SliverChildBuilderDelegate(
                //childCount: products.length
                    (context, index) {
                  return  RestaurantItemCard(
                    index: index,
                    products: products[index],
                    //margin: EdgeInsets.zero,
                  );
                },
                childCount: products.length,
              ),
            ),
          ),
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
        child: SearchAndFilterWidget(),
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