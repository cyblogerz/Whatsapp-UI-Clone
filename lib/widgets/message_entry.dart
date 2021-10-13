// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MessageEntry extends StatefulWidget {
  @override
  State<MessageEntry> createState() => _MessageEntryState();
}

class _MessageEntryState extends State<MessageEntry> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: CircleAvatar(
          backgroundColor: Colors.green,
          child: IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ),
        prefixIcon: Icon(Icons.emoji_emotions_outlined),
        hintText: 'Type a message',
        suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.attach_file),
              Icon(Icons.camera_alt)
            ]),
      ),
    );
  }
}
