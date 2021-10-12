// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String pfpurl;
  final String time;
  ChatTile(
      {required this.name,
      required this.message,
      required this.pfpurl,
      required this.time});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(pfpurl),
        backgroundColor: Colors.blue,
        radius: 32,
      ),
      title: Text(name),
      subtitle: Text(message),
    );
  }
}
