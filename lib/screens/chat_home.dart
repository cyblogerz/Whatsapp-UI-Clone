import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/providers/myprovider.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/widgets/chat_tile.dart';

class ChatHome extends StatelessWidget {
  final List<UserModel> chatTiles;

  ChatHome({required this.chatTiles});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProvider>(context);
    final users = data.getUsers();
    return Scaffold(
      body: ListView.separated(
        itemCount: chatTiles.length,
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
            value: users[index],
            child: ChatTile(
              user: users[index],
              lastmsg: data.getLastmsg(users[index].id),
              time: data.getTime(users[index].id),
            )),
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
