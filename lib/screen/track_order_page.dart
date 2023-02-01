import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../common/image_string.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  static const String routeName = '/track_order';

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
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
                      height: 100,
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
                    Positioned(
                      left: 20,

                      child: Container(
                        child: const Image(
                          image: AssetImage(tMapBorderImage),
                          height: 200,
                          width: 40,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Track orders',
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
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
                                const CircleAvatar(
                                  radius: 26,
                                  backgroundImage: AssetImage(tGuyImage),
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
                                      'Guy Hawkins',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                    ),
                                    Text(
                                      '10 mins on the way',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.call,
                                          color: Colors.redAccent,
                                        ),
                                      )),
                                ),
                                Container(
                                  margin:const EdgeInsets.symmetric(horizontal: 8),
                                  decoration:  BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.3),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: IconButton(
                                        onPressed: () {
                                        },
                                        icon: const Icon(
                                          Icons.chat,
                                          color: primaryColor,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
