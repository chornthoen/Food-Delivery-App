import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/component/button_widget.dart';

import '../common/image_string.dart';
import '../component/button_back_and_title.dart';

class RateRestaurantPage extends StatefulWidget {
  const RateRestaurantPage({Key? key}) : super(key: key);

  static const String routeName = "/rate_restaurant_page";

  @override
  State<RateRestaurantPage> createState() => _RateRestaurantPageState();
}

class _RateRestaurantPageState extends State<RateRestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ButtonBackAndTitle(
                title: '',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                    width: 160,
                    // margin: EdgeInsets.only(
                    //   right: 10,
                    //   bottom: 10,
                    // ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(tRectoFoodImage),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Recto Food',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enjoy your meal !',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Please rate the restaurant',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.star,
                          color: primaryColor,
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: primaryColor,
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: primaryColor,
                          size: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: primaryColor,
                          size: 30,
                        ),
                        Icon(
                          Icons.star_border,
                          color: primaryColor,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 15),
                        ),
                      ],
                      border: Border.all(
                        color: const Color(0xFFF4F6F9),
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 24),
                        hintText: 'Leave feedback ...',
                        helperStyle:
                        Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA5ABB3),
                        ),
                        suffixIcon: const Icon(
                          Icons.mode,
                          size: 30,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child:ButtonWidget(
                      text: 'Submit',
                      onPressed: () {
                        // Navigator.pushNamed(context, RateDriverPage.routeName);
                      },
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
