import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/providers/myprovider.dart';
import 'package:whatsapp_clone/widgets/chat_tile.dart';

class SearchList extends StatefulWidget {
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    List<UserModel> search_list = Provider.of<DataProvider>(context).getsearchList;
    List<UserModel> users = Provider.of<DataProvider>(context).getUserList;

    return SafeArea(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return (search_list.length == 0)
            ? ChatTile(
                name: users[index].name,
                message: users[index].message!,
                pfpurl: users[index].pfpurl,
                time: users[index].time!)
            : ChatTile(
                name: search_list[index].name,
                message: search_list[index].message!,
                pfpurl: search_list[index].pfpurl,
                time: search_list[index].time!);
      },
      itemCount: (search_list.length == 0)?users.length:search_list.length,
    ));
  }
}
