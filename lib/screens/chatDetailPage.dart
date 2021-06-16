import 'package:chatui/Models/ChatMessageModel.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Hello Mam! Hope you are doing well",
        messageType: "reciever"),
    ChatMessage(
        messageContent: "Hi Parnavi!Yes I am Happy to connect!",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Glad to be part of your community as well",
        messageType: "reciever"),
    ChatMessage(
        messageContent:
            "Wanted to gather your thoughts regarding what I have been working on",
        messageType: "reciever"),
    ChatMessage(
        messageContent:
            "When do you believe will be the best possible way to connect",
        messageType: "reciever"),
    ChatMessage(
        messageContent: "Great!Thanks for reaching out!",
        messageType: "sender"),
    ChatMessage(
        messageContent: "I have added some new consultation slots today.",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Use them to schedule as per convenience",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Thank you for supporting", messageType: "reciever"),
    ChatMessage(
        messageContent: "Looking forward to our call", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.only(right: 16),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/2.jpg"),
                maxRadius: 20,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kriss Benwat",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Online",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  )
                ],
              ))
            ],
          ),
        )),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write Message",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none),
                  )),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
