import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_model.dart';

class MessageTile extends StatelessWidget {
  final Message msg;

  const MessageTile({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(msg.msg),
        subtitle: Text(msg.time),
      ),
    );
  }
}
