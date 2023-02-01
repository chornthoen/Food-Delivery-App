import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';

import '../common/image_string.dart';
import 'calling_success_page.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({Key? key}) : super(key: key);
  static const String routeName = "/calling_page";

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: primaryColor,
                      width: 3,
                    ),
                  ),
                  child:const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(tGuyImage),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Guy Hawkins',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Ringing ...',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.cancel,
                              color: Colors.redAccent,
                            ),
                          )),
                    ),
                    Container(
                      margin:const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9FFED),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, CallingSuccessPage.routeName);
                            },
                            icon: const Icon(
                              Icons.call,
                              color: Color(0xFF07FF90),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
