// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

final randomNumberGenerator = Random();
final pseudoStatus = randomNumberGenerator.nextBool();

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String pfpurl;
  final String time;
  // final Function()? tapCallback;
  ChatTile(
      {required this.name,
      // required this.tapCallback,
      required this.message,
      required this.pfpurl,
      required this.time});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatScreen(
                      name: name,
                      pfpurl: pfpurl,
                      onlineStatus: pseudoStatus,
                    )));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(pfpurl),
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
