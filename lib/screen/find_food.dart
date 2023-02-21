import 'package:flutter/material.dart';
import 'package:foods/component/button_back_and_title.dart';

import '../common/constants.dart';
import '../component/button_widget.dart';
import '../component/search_filter.dart';

class FindFoodPage extends StatefulWidget {
  const FindFoodPage({Key? key}) : super(key: key);

  static const String routeName = '/find_food';

  @override
  State<FindFoodPage> createState() => _FindFoodPageState();
}

class _FindFoodPageState extends State<FindFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonBackAndTitle(
              title: "Find your Food",
              onTap: () {},
            ),
            const SizedBox(
              height: 28,
            ),
            const SearchAndFilterWidget(),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Type",
            //         style: Theme.of(context).textTheme.subtitle1!.copyWith(
            //           color: blackColor,
            //           fontSize: 20,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       Row(
            //         children: [
            //           GestureDetector(
            //             onTap: () {
            //               print("Type");
            //               setState(() {
            //                 isSelected = !isSelected;
            //               });
            //             },
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(24),
            //                 color: isSelected ? primaryColor : Colors.white,
            //                 border: Border.all(
            //                   color: primaryColor,
            //                   width: 2,
            //                 ),
            //               ),
            //               padding: const EdgeInsets.only(
            //                   top: 8, left: 10, right: 10, bottom: 8),
            //               child: Text(
            //                 'Restaurant',
            //                 textAlign: TextAlign.center,
            //                 style: Theme.of(context).textTheme.headline5!.copyWith(
            //                   color: isSelected ? Colors.white : primaryColor,
            //                   fontSize: 16,
            //                   fontWeight: FontWeight.w600,
            //                 ),
            //               ),
            //             ),
            //           ),
            //           const SizedBox(
            //             width: 10,
            //           ),
            //           GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 isSelected = !isSelected;
            //               });
            //             },
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(24),
            //                 color: isSelected ? primaryColor : Colors.white,
            //                 border: Border.all(
            //                   color: primaryColor,
            //                   width: 2,
            //                 ),
            //               ),
            //               padding: const EdgeInsets.only(
            //                   top: 8, left: 10, right: 10, bottom: 8),
            //               child: Text(
            //                 'Restaurant',
            //                 textAlign: TextAlign.center,
            //                 style: Theme.of(context).textTheme.headline5!.copyWith(
            //                   color: isSelected ? Colors.white : primaryColor,
            //                   fontSize: 16,
            //                   fontWeight: FontWeight.w600,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SelectedWidget(
                        title: 'Restaurant',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: 'Menu',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SelectedWidget(
                        title: '1 km',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: '< 5 km',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: '< 10 km',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: '> 10 km',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SelectedWidget(
                        title: 'Cake',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: 'Salad',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: 'Pasta',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: 'Desert',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SelectedWidget(
                        title: 'Main Course',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: 'Appetizer',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SelectedWidget(
                        title: 'Soup',
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(
                text: 'Search',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedWidget extends StatelessWidget {
  const SelectedWidget({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 8),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
