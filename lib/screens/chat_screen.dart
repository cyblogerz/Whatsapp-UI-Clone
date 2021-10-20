import 'package:cached_network_image/cached_network_image.dart';
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
        titleSpacing: 0,
        backgroundColor: Colors.teal[900],
        title: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: CachedNetworkImageProvider(pfpurl),
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
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.video_camera_front_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                // height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/whatsapp_chat_bg.png'),
                    fit: BoxFit.cover,
                  ),
                  // color: Colors.red,
                ),
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: MessageEntry()),
          ],
        ),
      ),
    );
  }
}
