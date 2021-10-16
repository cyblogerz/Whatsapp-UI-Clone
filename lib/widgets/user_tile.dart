// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

final randomNumberGenerator = Random();
final pseudoStatus = randomNumberGenerator.nextBool();

class UserTile extends StatelessWidget {
  final String name;
  final String about;
  final String pfpurl;

  // final Function()? tapCallback;
  UserTile({
    required this.name,
    // required this.tapCallback,
    required this.about,
    required this.pfpurl,
  });
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
          backgroundImage: NetworkImage(pfpurl),
          backgroundColor: Colors.blue,
          radius: 25,
        ),
        title: Text(name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        subtitle: Text(about),
      ),
    );
  }
}
