

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'chat_page.dart';
import 'home_page.dart';
import 'orders_page.dart';
import 'profile_page.dart';

class MainScreen extends StatefulWidget {

  static const String routeName = "main_screen";
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  var currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  // current page
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _pages[_selectedIndex],
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(

        margin: EdgeInsets.only( bottom: displayWidth * .05, left: displayWidth * .05, right: displayWidth * .05),
        height: 81,
        decoration: BoxDecoration(
          color: Colors.white,
          border: const Border.fromBorderSide(
            BorderSide(
              color: Color(0xffF4F6F9),
              width: 1,
            ),
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: ListView.builder(

          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                _selectedIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            // splashColor: Colors.transparent,
            // highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth*.32
                      : displayWidth *.18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.redAccent.withOpacity(.1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                            index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: const TextStyle(
                                color: Color(0xFFFF1843),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                            index == currentIndex ? displayWidth * .04 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == currentIndex
                                ? Color(0xFFFF1843)
                                : Color(0xFFFF7E95),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.shopping_basket,
    Icons.chat,
    Icons.person,
  ];

  List<String> listOfStrings = [
    'Home',
    'Order',
    'Chats',
    'Profile',
  ];
}