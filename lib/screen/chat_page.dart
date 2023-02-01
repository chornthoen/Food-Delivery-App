import 'package:flutter/material.dart';
import 'package:foods/component/chat_widget.dart';

import '../common/constants.dart';
import '../models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const String routeName = '/chat_page';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> searchList = List.from(chatModel);


  void updateList(String value) {
    setState(() {
      searchList = chatModel
          .where((element) =>
          element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Chat',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Expanded(
                child: Container(
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
                    onChanged: (value){
                      updateList(value);
                    },
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
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  searchList.isEmpty
                      ? Center(
                    child: Text(
                      'Now you have no favorite',
                      style:
                      Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                      : ListView.builder(
                    itemCount: searchList.length,
                    itemBuilder: (context, index) => ChatWidget(
                      itemIndex: index,
                      chatModel: searchList[index],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}


