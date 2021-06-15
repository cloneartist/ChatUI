import 'package:chatui/screens/chatDetailPage.dart';
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
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.imageUrl),
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
            Column(
              children: [
                Text(
                  widget.time,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight:
                          widget.isMRead ? FontWeight.bold : FontWeight.normal),
                ),
                SizedBox(height: 10),
                widget.isMRead
                    ? Container(
                        // padding: EdgeInsets.only(top: 10),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            // borderRadius: BorderRadius.all(Radius.circular(20)),
                            shape: BoxShape.circle),
                        child: Center(child: Text("1")))
                    : Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
