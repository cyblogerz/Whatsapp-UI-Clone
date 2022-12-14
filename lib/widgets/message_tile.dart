import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_model.dart';

class MessageTile extends StatelessWidget {
  final Message msg;

  const MessageTile({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          alignment: msg.isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Column(
            children: <Widget>[
              Text(msg.msg),
              Text(msg.time),
            ],
          ),

          //Create a whatsapp chat like message bubble,
          //with a triangle at the end
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: msg.isMe ? Color(0xffE1FFC7) : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: msg.isMe ? Radius.circular(10) : Radius.circular(0),
              bottomRight: msg.isMe ? Radius.circular(0) : Radius.circular(10),
            ),
          )),
    );
  }
}
