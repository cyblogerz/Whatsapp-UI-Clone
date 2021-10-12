// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
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
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(pfpurl),
          backgroundColor: Colors.blue,
          radius: 25,
        ),
        title: Text(name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        subtitle: Text(message),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
