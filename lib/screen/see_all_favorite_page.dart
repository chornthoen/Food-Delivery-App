import 'package:flutter/material.dart';
import 'package:foods/component/button_and_title.dart';
import '../common/constants.dart';
import '../component/favorite.dart';
import '../models/favorite_model.dart';

class SeeAllFavoritePage extends StatefulWidget {
  const SeeAllFavoritePage({Key? key}) : super(key: key);
  static const String routeName = "/see_all_favorite";

  @override
  State<SeeAllFavoritePage> createState() => _SeeAllFavoritePageState();
}

class _SeeAllFavoritePageState extends State<SeeAllFavoritePage> {
  List<ProductF> displayList = List.from(product1);

  void updateList(String value) {
    setState(() {
      displayList = product1
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAngTitle(
              title: "Favorite",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F6F9),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.04),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                updateList(value);
                              },
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 16),
                                hintText: 'Search',
                                helperStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF09101D),
                                    ),
                                suffixIcon: const Icon(Icons.search),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.04),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        print('Filter');
                      },
                      splashRadius: 1,
                      icon: const Icon(
                        Icons.filter_list,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //const SearchAndFilterWidget(),
            Expanded(
              child: Stack(
                children: [
                  displayList.isEmpty
                      ? Center(
                          child: Text(
                            'Now you have no favorite',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: displayList.length,
                          itemBuilder: (context, index) => FavoriteCard(
                            itemIndex: index,
                            products: displayList[index],
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
//   Container containerFavorite(
//     context, {
//     required String image,
//     required String name,
//     required String subtitle,
//     required String price,
//     // final VoidCallback? onTap,
//   }) {
//     bool index=false;
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 20),
//       padding: const EdgeInsets.only(top: 9, bottom: 9, left: 15, right: 20),
//       height: 80,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.blue.withOpacity(0.05),
//             spreadRadius: 1,
//             blurRadius: 10,
//             offset: const Offset(0, 10),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           SizedBox(
//             child: Image(
//               image: AssetImage(image),
//             ),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black,
//                       ),
//                 ),
//                 Text(
//                   subtitle,
//                   style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: const Color(0xFF858C94),
//                       ),
//                 ),
//                 Text(
//                   price,
//                   style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: primaryColor,
//                       ),
//                 ),
//               ],
//             ),
//           ),
//           IconButton(
//             onPressed: () {
//               showModalBottomSheet(
//                 context: context,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(35),
//                   ),
//                 ),
//                 builder: (context) => Container(
//                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
//                   height: 200,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const Icon(
//                         Icons.favorite_border,
//                         size: 40,
//                         color: primaryColor,
//                       ),
//                       Text(
//                         'Remove from favorite?',
//                         style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: neutral1Color,
//                             ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           GestureDetector(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(32),
//                                 border: Border.all(
//                                   color: primaryColor,
//                                   width: 2,
//                                 ),
//                               ),
//                               padding: EdgeInsets.only(top: 8, bottom: 8),
//                               height: 46,
//                               width: 150,
//                               child: Text(
//                                 'Cancel',
//                                 textAlign: TextAlign.center,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .subtitle1!
//                                     .copyWith(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: primaryColor,
//                                     ),
//                               ),
//                             ),
//                             onTap: (){
//                               Navigator.pop(context);
//                             },
//                           ),
//                           GestureDetector(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(32),
//                                 color: primaryColor
//                               ),
//                               padding: const EdgeInsets.only(top: 9, bottom: 8),
//                               height: 46,
//                               width: 150,
//                               child: Text(
//                                 'Yes, remove',
//                                 textAlign: TextAlign.center,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .subtitle1!
//                                     .copyWith(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white,
//                                     ),
//                               ),
//                             ),
//                             onTap: (){
//                               setState(() {
//                                 index = !index;
//                               });
//                             },
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             },
//             icon: const Icon(
//               Icons.favorite,
//               size: 35,
//             ),
//             color: primaryColor,
//           )
//         ],
//       ),
//     );
//   }
// }
