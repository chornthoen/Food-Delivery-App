import 'package:flutter/material.dart';
import 'package:foods/component/title_widget.dart';

import '../common/constants.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';
import 'calling_success_page.dart';

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBackAngTitle(
              title: "Set your location",
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleName(
              title: 'This data will be displayed in your account profile for security',
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
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
                  Container(
                    margin:const EdgeInsets.symmetric(horizontal: 10),
                    decoration:  BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(6),
                    child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, CallingSuccessPage.routeName);
                          },
                          icon:const  Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
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
            const Spacer(),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(
                text: 'Next',
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
