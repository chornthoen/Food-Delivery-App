import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/screen/see_all_favorite_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../component/titile_see_all.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.55,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(tProfileImage),
                fit: BoxFit.cover,
              )),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.3,
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
            ),
          ),
          SlidingUpPanel(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            maxHeight: MediaQuery.of(context).size.height * 0.8,
            minHeight: MediaQuery.of(context).size.height * 0.55,
            body: Container(
              color: Colors.transparent,
            ),
            panelBuilder: (ScrollController controller) {
              return _panelBody(controller, context);
            },
          )
        ],
      ),
    );
  }

  SingleChildScrollView _panelBody(ScrollController controller, context) {
    return SingleChildScrollView(
      controller: controller,
      physics: ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //color: Colors.redAccent,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 2.5,
                    width: 40,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFFFB800),
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, right: 10, bottom: 5),
                  child: Text(
                    'Member Gold',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Color(0xFFFFB800),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chorn Thoen',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            'chornthoen@gmail.com',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent.withOpacity(0.2),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mode),
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 67,
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
                      const SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: AssetImage(tDollarImage),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'You have 4 vouchers',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TitleSectionWidget(
                  leadingText: "Favorite",
                  trailingText: "See all",
                  onTap: () {
                    Navigator.pushNamed(context, SeeAllFavoritePage.routeName);
                  },
                ),
                containerFavorite(
                  context,
                  image: tGreenyImage,
                  name: "Greeny Salad",
                  subtitle: 'Lovy Food',
                  price: '\$12',
                ),
                containerFavorite(
                  context,
                  image: tFreshSaladImage,
                  name: "Fresh Salad",
                  subtitle: 'Recto Food',
                  price: '\$9',
                ),containerFavorite(
                  context,
                  image: tMixedImage,
                  name: "Mixed Salad",
                  subtitle: 'Circlo Resto',
                  price: '\$11',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container containerFavorite(context,{
    required String image,
    required String name,
    required String subtitle,
    required String price,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Row(
        children: [
           SizedBox(
            child: Image(
              image: AssetImage(image),
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
                  name,
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
                Text(
                  price,
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
            onPressed: () {},
            icon: const Icon(Icons.favorite,size: 30,),
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
