import 'package:flutter/material.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/screen/forgot_password_page.dart';
import 'package:foods/screen/get_started_screen.dart';
import 'package:foods/screen/popular_restaurants.dart';
import 'package:foods/screen/reset_password.dart';
import 'package:foods/screen/set_location_page.dart';
import 'package:foods/screen/sign_in_page.dart';
import 'package:foods/screen/update_photo_profile.dart';

import 'congrate_page.dart';
import 'fill_bio_page.dart';
import 'find_food.dart';
import 'forgot_password1_page.dart';
import 'home_page.dart';
import 'main_page.dart';
import 'order_details.dart';
import 'payment_method_page.dart';
import 'reset_password_successe.dart';
import 'select_locatin_page.dart';
import 'sign_up_page.dart';
import 'update_photo_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(
        context,
        MainPage.routeName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(

                    image: AssetImage(tSplashImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // loading indicator
              Positioned(
                bottom: 100,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}