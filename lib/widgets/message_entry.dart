// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/myprovider.dart';

const kMessageTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    prefixIcon: Icon(Icons.emoji_emotions_outlined),
    suffixIcon: Icon(Icons.camera_alt),
    hintText: 'Type a message',
    border: InputBorder.none);

const kMessageContainerDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      blurRadius: 0.7,
    ),
  ],
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32),
      bottomRight: Radius.circular(32),
      bottomLeft: Radius.circular(32)),
);

class MessageEntry extends StatelessWidget {
  String? messageText;
  final int uid;

  final messageTextController = TextEditingController();

  MessageEntry({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        // decoration: ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: kMessageContainerDecoration,
                child: TextField(
                  controller: messageTextController,
                  onChanged: (value) {
                    messageText = value;
                    //Do something with the user input.
                  },
                  decoration: kMessageTextFieldDecoration,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                messageTextController.clear();
                data.sendChat(this.uid, messageText);

                // .add({
                //   'text': messageText,
                //   'sender': loggedInUser.email,
                //   'timestamp': FieldValue.serverTimestamp()
                // });
                //Implement send functionality.
              },
              child: CircleAvatar(
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                backgroundColor: Colors.teal[900],
                radius: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
