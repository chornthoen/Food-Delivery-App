import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../common/image_string.dart';
import '../component/button_and_title.dart';
import '../component/button_widget.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  static const String routeName = "/update_profile";

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
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
              title: "Update your Photo",
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
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(tPFImage),
                  ),
                ),
                Positioned(
                  right:65,
                  bottom: 1,
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.only(
                      top: 0.5,
                      left: 3,
                      right: 3,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {
                        print('location');
                      },
                      icon: const Icon(
                        Icons.mode,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 295,
            ),
            ButtonWidget(
              text: 'Next',
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
