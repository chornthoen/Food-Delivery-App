import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({Key? key}) : super(key: key);

  static const String routeName = "/select_location";

  @override
  State<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBackAngTitle(
              title: "Set your location",
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
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Color(0xffEBEEF2),
                    width: 1,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 78,
                        height: 78,
                        padding: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 78,
                          height: 78,
                          padding: const EdgeInsets.only(
                            top: 0.5,
                            left: 3,
                            right: 3,
                          ),
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
                  Text(
                    "Set location",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color(0xFF09101D)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 330,
            ),
            ButtonWidget(
              text: 'Next',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
