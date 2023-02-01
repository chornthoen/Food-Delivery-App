import 'package:flutter/material.dart';
import 'package:foods/common/constants.dart';
import 'package:foods/common/image_string.dart';
import 'package:foods/component/button_and_title.dart';
import 'package:foods/screen/calling_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);
  static const String routeName = "message";

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ButtonBackAngTitle(
              title: "Chat",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const ChatDemo(),
            const Expanded(
              child: SingleChildScrollView(
                child: _DemoMessage(),
              ),
            ),
            const ActionBarTextField(),
          ],
        ),
      ),
    );
  }
}

class ChatDemo extends StatelessWidget {
  const ChatDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(tGuyImage),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                'Guy Hawkins',
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Online',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF858C94),
                    ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(1),
                  child: Center(
                      child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CallingPage.routeName);
                    },
                        icon: const Icon(
                      Icons.call,
                      color: Colors.redAccent,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DemoMessage extends StatelessWidget {
  const _DemoMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MessageYou(
          message: 'Just to order',
        ),
        MessageMe(
          message: 'Ok, what\'s the spicy level?',
        ),
        MessageYou(
          message: 'Okay, wait a minute 👍',
        ),
        MessageMe(
          message: 'Okay I\'m waiting  👍',
        ),
        MessageYou(
          message: 'Just to order',
        ),
        MessageMe(
          message: 'Ok, what\'s the spicy level?',
        ),
        MessageYou(
          message: 'Okay, wait a minute 👍',
        ),
        MessageMe(
          message: 'Okay I\'m waiting  👍',
        ),
        MessageMe(
          message: 'Ok, what\'s the spicy level?',
        ),
        MessageYou(
          message: 'Okay, wait a minute 👍',
        ),
        MessageMe(
          message: 'Okay I\'m waiting  👍',
        ),
      ],
    );
  }
}

class ActionBarTextField extends StatelessWidget {
  const ActionBarTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
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
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                hintText: 'Type message...',
                helperStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF09101D),
                    ),
                suffixIcon: const Icon(
                  Icons.send,
                  size: 30,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessageMe extends StatelessWidget {
  const MessageMe({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                message,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageYou extends StatelessWidget {
  const MessageYou({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6F9),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Text(
                message,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
