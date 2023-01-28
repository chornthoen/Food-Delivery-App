import 'package:flutter/material.dart';
import 'package:foods/component/button_and_title.dart';

import '../common/constants.dart';
import '../component/search_filter.dart';

class FindFoodPage extends StatefulWidget {
  const FindFoodPage({Key? key}) : super(key: key);

  static const String routeName = '/find_food';

  @override
  State<FindFoodPage> createState() => _FindFoodPageState();
}

class _FindFoodPageState extends State<FindFoodPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonBackAngTitle(
                title: "Find your Food",
                onTap: () {},
              ),
              const SizedBox(
                height: 28,
              ),
              const SearchAndFilterWidget(),
              const SizedBox(
                height: 28,
              ),
              Text(
                "Type",
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: isSelected ? primaryColor : Colors.white,
                        border: Border.all(
                          color: primaryColor,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.only(
                          top: 8, left: 10, right: 10, bottom: 8),
                      child: Text(
                        'Restaurant',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: isSelected ? Colors.white : primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: isSelected ? primaryColor : Colors.white,
                        border: Border.all(
                          color: primaryColor,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.only(
                          top: 8, left: 10, right: 10, bottom: 8),
                      child: Text(
                        'Restaurant',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: isSelected ? Colors.white : primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}

