import 'package:flutter/material.dart';
import 'package:foods/component/title_widget.dart';
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
      body: SafeArea(
        child: Column(
          children: [
             ButtonBackAngTitle(
              title: "Set your location",
              onTap: (){
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleName(
              title: 'This data will be displayed in your account profile for security',
            ),
            const SizedBox(
              height: 8,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 478,
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
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    height: 76,
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
                          padding: const EdgeInsets.all(14),
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
                  const SizedBox(
                    height: 8,
                  ),
                  ButtonWidget(
                    text: 'Set location',
                    onPressed: (){},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
