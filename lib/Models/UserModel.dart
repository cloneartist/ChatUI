import 'package:flutter/material.dart';

class ChatUsers {
  String name;
  String messageText;
  String imageURl;
  String time;
  ChatUsers(
      {this.name = "",
      this.messageText = "",
      this.imageURl = "",
      this.time = ""});
}
