import 'package:flutter/material.dart';
import 'package:foods/screen/track_order_page.dart';

import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/button_widget.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  static const String routeName = "/set_map";

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(tMapImage),
                    fit: BoxFit.cover,
                  )),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(50),
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
                              horizontal: 24, vertical: 20),
                          hintText: 'Find your location',
                          helperStyle:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF09101D),
                                  ),
                          suffixIcon: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(30),
                      child: Center(
                          child: IconButton(
                            onPressed: () {},
                          icon: const Icon(
                          Icons.location_on,
                          color: Colors.redAccent,
                          size: 35,
                        ),
                      )),
                    ),
                   const SizedBox(
                      height: 150,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20,vertical: 0 ),
                      height: 230,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 15),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.05),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 15),
                                ),
                              ],
                              border: Border.all(
                                width: 2,
                                color: primaryColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.3),
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(18),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_on,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Home',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                          ),
                                    ),
                                    Text(
                                      'Bung Tomo St.109',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  padding:const EdgeInsets.only(
                                    left: 0.0,
                                    top: 0.3,
                                  ),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.mode,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ButtonWidget(
                            text: 'Set location',
                            onPressed: (){
                              Navigator.pushNamed(context, TrackOrderPage.routeName);
                            },
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
