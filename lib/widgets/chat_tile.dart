// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/providers/myprovider.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

final randomNumberGenerator = Random();
final pseudoStatus = randomNumberGenerator.nextBool();

class ChatTile extends StatelessWidget {
  final UserModel user;
  // final String name;
  // final int id;
  final String lastmsg;
  // final String pfpurl;
  final String time;
  // final Function()? tapCallback;
  ChatTile({required this.user, required this.lastmsg, required this.time});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatScreen(
                      id: user.id,
                      name: user.name,
                      pfpurl: user.pfpurl,
                      onlineStatus: pseudoStatus,
                    )));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(user.pfpurl),
          backgroundColor: Colors.blue,
          radius: 25,
        ),
        title: Text(user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        subtitle: Text(lastmsg),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
