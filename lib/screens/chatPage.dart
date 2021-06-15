import 'package:chatui/Models/UserModel.dart';
import 'package:chatui/WidgetModel/conversationlist.dart';
import "package:flutter/material.dart";

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "PARANAVI TAMBE",
        messageText: "Thank you for your support",
        imageURl: "assets/23.png",
        time: "30 Mins ago"),
    ChatUsers(
        name: "DHANVI",
        messageText: "Hey Kamiya!Truly inspired ...",
        imageURl: "assets/3.png",
        time: "12:01 PM"),
    ChatUsers(
        name: "PRANAV NAIR",
        messageText: "Hello Ma'am",
        imageURl: "assets/5.png",
        time: "11:21 AM"),
    ChatUsers(
        name: "RACHEL GREEN",
        messageText: "Your Ideas actually did ...",
        imageURl: "assets/5.png",
        time: "10:05 AM"),
    ChatUsers(
        name: "BHOOPALAN P",
        messageText: "THANK YOU! This means...",
        imageURl: "assets/23.png",
        time: "Yesterday"),
    ChatUsers(
        name: "PRANAV NAIR",
        messageText: "That is some good advice...",
        imageURl: "assets/20.png",
        time: "Yesterday"),
    ChatUsers(
        name: "RACHEL GREEN",
        messageText: "In retrospect, that segment",
        imageURl: "assets/21.png",
        time: "2 Days Ago"),
    ChatUsers(
        name: "BHOOPALAN P",
        messageText: "You are very very good at...",
        imageURl: "assets/19.png",
        time: "2 Days Ago")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              child: Padding(
            padding: EdgeInsets.only(left: 16, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Conversations",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink[50]),
                  // child: Row(
                  //   children: [
                  //     Icon(
                  //       Icons.add,
                  //       color: Colors.pink,
                  //       size: 20,
                  //     ),
                  //     SizedBox(
                  //       width: 2,
                  //     ),
                  //     Text(
                  //       "Add New",
                  //       style: TextStyle(
                  //           fontSize: 14, fontWeight: FontWeight.bold),
                  //     )
                  //   ],
                  // ),
                )
              ],
            ),
          )),
          Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade100)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade100)),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 16),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return ConversationList(
                    name: chatUsers[i].name,
                    messageText: chatUsers[i].messageText,
                    imageUrl: "https://randomuser.me/api/portraits/men/$i.jpg",
                    time: chatUsers[i].time,
                    isMRead: (i == 0 || i == 3) ? true : false,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
