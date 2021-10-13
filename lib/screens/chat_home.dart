import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/widgets/chat_tile.dart';

class ChatHome extends StatefulWidget {
  final List<User> chatTiles;

  ChatHome({required this.chatTiles});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ChatTile(
            name: widget.chatTiles[index].name,
            message: widget.chatTiles[index].message,
            pfpurl: widget.chatTiles[index].pfpurl,
            time: widget.chatTiles[index].time,
          );
        },
        itemCount: widget.chatTiles.length,
      ),
    );
  }
}
