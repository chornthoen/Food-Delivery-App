import 'package:animations/animations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';
import 'home_page.dart';
import 'orders_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = '/main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // list page
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
      body:SafeArea(
        bottom: false,
        child: PageTransitionSwitcher(
          duration: const Duration(
            milliseconds: 400,
          ),
          child: _pages[_selectedIndex],
          transitionBuilder: ( child, animation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.04),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0,10),
              ),

            ],
            border: const Border.fromBorderSide(
              BorderSide(
                color: Color(0xffF4F6F9),
                width: 1,
              ),
            ),
          ),
          margin: const EdgeInsets.only(bottom: 10,left: 15,right: 15),
          height: 75,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomNavigationBarItem(
                icon: Icons.home,
                label: 'Home',
                index: 0,
              ),
              _buildBottomNavigationBarItem(
                icon: Icons.shopping_basket,
                label: 'Orders',
                index: 1,
              ),
              _buildBottomNavigationBarItem(
                icon: Icons.chat,
                label: 'Chat',
                index: 2,
              ),
              _buildBottomNavigationBarItem(
                icon: Icons.person,
                label: 'Profile',
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // build bottom navigation bar item
  Widget _buildBottomNavigationBarItem({
    required IconData icon,
    required int index,
    required String label,
  }) {
    return InkWell(
      radius: 16,
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration( seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.red.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(8),

        ),
        padding:  EdgeInsets.symmetric(vertical: 10, horizontal: _selectedIndex == index ? 24: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Icon(
                icon,
                color: _selectedIndex == index ? Colors.red : Colors.redAccent,
              ),
            ),
            const SizedBox(width: 3),
            if (_selectedIndex == index)
              AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 1),
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
