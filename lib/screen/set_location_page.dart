import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';

class SetLocationPage extends StatefulWidget {
  const SetLocationPage({Key? key}) : super(key: key);

  static const String routeName = "/set_location";

  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               ButtonBackAngTitle(
                title: "Set your location",
                onTap: (){},
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
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 450,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(tLocationImage),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 26,
                          offset: Offset(0, 15),
                        )
                      ],
                    ),

                  ),
                  Positioned(
                    top: 110,
                    left: 125,
                    child: Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {
                          print('location');
                        },
                        icon: const Icon(
                          Icons.location_on,
                          color: Color(0xFFF43F5E),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 63,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color(0xffFF1843),
                      width: 2,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 26,
                      offset: Offset(0, 15),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.redAccent.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.location_on,
                                  color: Color(0xFFF43F5E),
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF6D7580)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Bung Tomo St.109",
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF09101D)),
                        ),
                      ],
                    ),
                    SizedBox(width: 55,),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 0.0,top: 0.3,),
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
                    ),
                  ],
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'Set location',
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
