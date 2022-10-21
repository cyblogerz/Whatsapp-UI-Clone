import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/widgets/message_entry.dart';
import 'package:whatsapp_clone/widgets/message_tile.dart';

import '../providers/myprovider.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final int id;
  final bool onlineStatus;
  final String pfpurl;

  ChatScreen(
      {required this.name,
      required this.onlineStatus,
      required this.pfpurl,
      required this.id});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProvider>(context);
    final messages = data.listMessages(id);

    return Scaffold(
      backgroundColor: Color(0xffE5DDD5),
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/whatsapp_chat_bg.png'),
                    fit: BoxFit.cover,
                  ),
                  // color: Colors.red,
                ),
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
                          value: messages[index],
                          child: MessageTile(
                            msg: messages[index],
                          ),
                        )),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: MessageEntry(
                  uid: this.id,
                )),
          ],
        ),
      ),
    );
  }
}
