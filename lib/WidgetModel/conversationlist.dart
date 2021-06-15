import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  // const ConversationList({ Key? key }) : super(key: key);
  final String name;
  final String messageText;
  final String imageUrl;
  final String time;
  final bool isMRead;
  ConversationList(
      {this.name = "",
      this.messageText = "",
      this.imageUrl = "",
      this.time = "",
      this.isMRead = true});

  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
        ),
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.imageUrl),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        widget.messageText,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                          fontWeight: widget.isMRead
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ))
              ],
            )),
            Text(
              widget.time,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight:
                      widget.isMRead ? FontWeight.bold : FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
