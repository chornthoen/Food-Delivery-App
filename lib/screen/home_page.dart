import 'package:flutter/material.dart';
import 'package:foods/screen/notification_page.dart';
import 'package:foods/screen/see_all_menu.dart';

import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/menu_item.dart';
import '../component/restaurant_item.dart';
import '../component/titile_see_all.dart';
import 'forgot_password1_page.dart';
import 'see_all_popular_restaurant_page.dart';
import 'see_all_popularmenu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopSection(),
              _buildSearchSectionWidget(),
              _buildBannerWidget(context),
              TitleSectionWidget(
                leadingText: 'Popular Restaurants',
                trailingText: 'See All',
                onTap: () {
                  Navigator.pushNamed(context, SeeAllPopularRestaurant.routeName);
                },
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    RestaurantItemHome(
                      index: 0,
                      title: 'Lovy Food',
                      subtitle: '10 min',
                      imagePath: tLovyFoodImage,
                    ),
                    RestaurantItemHome(
                      index: 1,
                      title: 'Cloudy Food',
                      subtitle: '14 min',
                      imagePath: tCloudyRestoImage,
                    ),
                    RestaurantItemHome(
                      index: 2,
                      title: 'Circlo Resto',
                      subtitle: '11 min',
                      imagePath: tCircloRestoImage,
                    ),
                    RestaurantItemHome(
                      index: 3,
                      title: 'Haty Food',
                      subtitle: '16 min',
                      imagePath: tHatyFoodImage,
                    ),
                    RestaurantItemHome(
                      index: 4,
                      title: 'Hearthy Resto',
                      subtitle: '18 min',
                      imagePath: tHearthyRestoImage,
                    ),
                    RestaurantItemHome(
                      index: 5,
                      title: 'Recto Food',
                      subtitle: '15 min',
                      imagePath: tRectoFoodImage,
                    ),
                  ],
                ),
              ),

              TitleSectionWidget(
                leadingText: 'Popular Menu',
                trailingText: 'See All',
                onTap: () {
                  Navigator.pushNamed(context, SeeAllMenu.routeName);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const MenuItems(
                imagePath: tOriginalSaladImage,
                title: "Original Salad",
                subtitle: "Lovy Food",
                price: "\$8",
              ),
              const MenuItems(
                imagePath: tFreshSaladImage,
                title: "Fresh Salad",
                subtitle: "Cloudy Resto",
                price: "\$10",
              ),
              const MenuItems(
                imagePath: tYummieIceCreamImage,
                title: "Yummie Ice Cream",
                subtitle: "Circle Resto",
                price: "\$6",
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildBannerWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 160,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(tHome1Image).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Special Deal for December",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildSearchSectionWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F6F9),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.04),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    //enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      hintText: 'Search',
                      helperStyle:
                          Theme.of(context).textTheme.subtitle1!.copyWith(
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
        Container(
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.04),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 1), // changes position of shadow
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
        const SizedBox(width: 16),
      ],
    );
  }

  _buildTopSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Hello, Thoen!',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F8FB),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NotificationPage.routeName);
                  },
                  splashRadius: 1,
                  icon: const Icon(
                    Icons.notifications_active,
                    color: primaryColor,
                  ),
                ),
              ),
              Positioned(
                top: 7,
                right: 9,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class RestaurantModel {
  final String title;
  final String subtitle;
  final String imagePath;

  RestaurantModel(this.title, this.subtitle, this.imagePath);
}
