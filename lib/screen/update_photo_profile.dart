import 'package:flutter/material.dart';
import 'package:foods/component/title_widget.dart';
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBackAngTitle(
              title: "Update your Photo",
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleName(
              title:
                  'This data will be displayed in your account profile for security',
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
                  right: 84,
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
                      onPressed: () {},
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
