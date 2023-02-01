import 'package:flutter/material.dart';
import 'package:foods/models/chat_model.dart';
import 'package:foods/screen/message_page.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    required this.itemIndex,
    required this.chatModel,
  }) : super(key: key);

  final int itemIndex;
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    int _itemIndex = itemIndex;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MessagePage.routeName);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
             CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(chatModel.imagePath),
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
                  chatModel.name,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  chatModel.subtitle,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF858C94),
                      ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    chatModel.subtrailing,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF858C94),
                        ),
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
