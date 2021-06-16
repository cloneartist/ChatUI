import 'package:flutter/material.dart';

class ChatMessage {
  @required
  String messageContent;
  @required
  String messageType;
  ChatMessage({this.messageContent = "", this.messageType = ""});
}
