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
    List<UserModel> search_list =
        Provider.of<DataProvider>(context).getsearchList;
    List<UserModel> users = Provider.of<DataProvider>(context).getUserList;
    String searchWord = Provider.of<DataProvider>(context).searchWord;
    return SafeArea(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return (searchWord.length == 0)
            ? ChatTile(
                user: users[index],
                lastmsg: users[index].message!,
                time: users[index].time!)
            : (searchWord.length > 0 && search_list.length == 0)
                ? Container()
                : ChatTile(
                    user: search_list[index],
                    lastmsg: search_list[index].message!,
                    time: search_list[index].time!);
      },
      itemCount: (search_list.length == 0) ? users.length : search_list.length,
    ));
  }
}
