import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/message_entry.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final bool onlineStatus;
  final String pfpurl;

  ChatScreen(
      {required this.name, required this.onlineStatus, required this.pfpurl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(pfpurl),
          ),
          title: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: onlineStatus
              ? const Text(
                  'online',
                  style: TextStyle(color: Colors.white),
                )
              : null,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(),
            MessageEntry(),
          ],
        ),
      ),
    );
  }
}
