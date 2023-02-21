import 'package:flutter/material.dart';
import '../common/image_string.dart';
import '../component/button_back_and_title.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  static const String routeName = '/notification_page';

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAndTitle(
              title: "Notification",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6F9),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.04),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  hintText: 'Search',
                  helperStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF09101D),
                      ),
                  suffixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            buildNotification(
              context,
              image: tCongrateImage,
              title: 'Your order is completed!',
              hour: '20.00',
            ),
            const SizedBox(
              height: 24,
            ),
            buildNotification(
              context,
              image: tCongrateImage,
              title: 'Your order is completed!',
              hour: '17.00',
            ),
            const SizedBox(
              height: 24,
            ),
            buildNotification(
              context,
              image: tDollarImage,
              title: 'Your received 200 points',
              hour: '14.00',
            ),
          ],
        ),
      ),
    );
  }

  Container buildNotification(
    BuildContext context, {
    required String image,
    required String title,
    required String hour,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    hour,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF858C94),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
