import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';
import '../component/labal_star.dart';

class FillBioPage extends StatefulWidget {
  const FillBioPage({Key? key}) : super(key: key);
  static const String routeName = "/fill_bio";

  @override
  State<FillBioPage> createState() => _FillBioPageState();
}

class _FillBioPageState extends State<FillBioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                ButtonBackAngTitle(
                  title: "Fill in your bio",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 28.5,
                ),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 14,
                        color: blackColor,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ContainerLabaleWiget(
                  name: "Full Name",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(1, 10),
                      )
                    ],
                  ),
                  // height: 60,
                  child: TextField(
                    //controller: _emailController,
                    keyboardType: TextInputType.name,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xFF09101D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 24,top: -1),
                      hintText: 'Full Name',
                      hintStyle:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFDADEE3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ContainerLabaleWiget(
                  name: "Nick Name",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(1, 10),
                      )
                    ],
                  ),
                  // height: 60,
                  child: TextField(
                    //controller: _emailController,
                    keyboardType: TextInputType.name,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xFF09101D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 24,top: -1),
                      hintText: 'Nick Name',
                      hintStyle:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFDADEE3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ContainerLabaleWiget(
                  name: "Phone Number",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(1, 10),
                      )
                    ],
                  ),
                  // height: 60,
                  child: TextField(
                    //controller: _emailController,
                    keyboardType: TextInputType.name,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xFF09101D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 24,top: -1),
                      hintText: 'Phone Number',
                      hintStyle:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFDADEE3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ContainerLabaleWiget(
                  name: "Gender",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(1, 10),
                      )
                    ],
                  ),
                  //height: 60,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.datetime,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xFF09101D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      suffixIcon:  const Icon(Icons.arrow_drop_down),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(
                        left: 24,
                        top: 11,
                      ),
                      hintText: "Gender",
                      hintStyle:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFDADEE3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ContainerLabaleWiget(
                  name: "Date of Birt",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(1, 10),
                      )
                    ],
                  ),
                  //height: 60,
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.datetime,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xFF09101D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      suffixIcon:  const Icon(Icons.date_range),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(
                        left: 24,
                        top: 11,
                      ),
                      hintText: "Date of Birt",
                      hintStyle:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFDADEE3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ContainerLabaleWiget(
                  name: "Address",
                  star: "*",
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(1, 10),
                      )
                    ],
                  ),
                  // height: 60,
                  child: TextField(
                    //controller: _emailController,
                    keyboardType: TextInputType.name,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xFF09101D),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 24,top: -1),
                      hintText: 'Address',
                      hintStyle:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFDADEE3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                 ButtonWidget(
                  text: 'Next',
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

