import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/models/message_model.dart';
import 'package:whatsapp_clone/models/user_model.dart';

class DataProvider with ChangeNotifier {
  bool height = false;
  String _searchKeyword = "";

  List<Message> messages = [
    Message(msg: "Hello bro", readStatus: false, time: "10:59 P.M", uid: 0),
    Message(msg: "How are you??", readStatus: false, time: "11:15 P.M", uid: 0),
    Message(msg: "Where r you", readStatus: false, time: "11:30 P.M", uid: 0),
    Message(msg: "Hello bro", readStatus: false, time: "10:59 P.M", uid: 0),
    Message(msg: "How are you??", readStatus: false, time: "11:15 P.M", uid: 1),
    Message(msg: "Where r you", readStatus: false, time: "11:30 P.M", uid: 1),
    Message(msg: "Hello bro", readStatus: false, time: "10:59 P.M", uid: 1),
    Message(msg: "How are you??", readStatus: false, time: "11:15 P.M", uid: 1),
    Message(msg: "Where r you", readStatus: false, time: "11:30 P.M", uid: 2),
    Message(msg: "Hello bro", readStatus: false, time: "10:59 P.M", uid: 2),
    Message(msg: "How are you??", readStatus: false, time: "11:15 P.M", uid: 2),
    Message(msg: "Where r you", readStatus: false, time: "11:30 P.M", uid: 2),
  ];

  List<UserModel> search_list = [];
  List<UserModel> _users = [
    UserModel(
        name: 'Narendra Modi',
        about: 'Prime Minister',
        message: 'Mere pyari desh vasiyo',
        id: 0,
        time: '10:50',
        pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
    UserModel(
        name: 'Sachin Tendulkar',
        id: 1,
        about: 'Chase your dreams 🙂',
        message: 'Yeah, I will check on that',
        time: '2:20',
        pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
    UserModel(
        name: 'Salman Khan',
        id: 2,
        about: 'Out for hunting 🐵',
        message: 'The deer will be arriving soon',
        time: '3:30',
        pfpurl: 'https://wallpapercave.com/wp/wp4323962.jpg'),
  ];
  void toggle_height() {
    height = !height;
    notifyListeners();
  }

  List<UserModel> get getUserList {
    return [..._users];
  }

  List<UserModel> get getsearchList {
    return [...search_list];
  }

  void updateSearchList(String s) {
    search_list.clear();
    _searchKeyword = s;
    // print(_searchKeyword);
    _searchKeyword.toLowerCase();
    search_list.addAll([..._users].where((element) =>
        element.name.toLowerCase().contains(_searchKeyword) &&
        !search_list.contains(element)));
    notifyListeners();
  }

  void clearSearch() {
    search_list.clear();
    _searchKeyword = "";
    notifyListeners();
  }

  List<UserModel> getUsers() {
    return _users;
  }

  List<Message> listMessages(id) {
    return messages.where((element) => element.uid == id).toList();
  }

  String get searchWord {
    return _searchKeyword;
  }

  double get height_value {
    if (height) return 170;
    return 110;
  }

  bool get getHeight {
    return height;
  }

  String getLastmsg(id) {
    List<Message> msgs = listMessages(id);
    return msgs[0].msg;
  }

  String getTime(id) {
    List<Message> msgs = listMessages(id);
    return msgs[0].time;
  }
}
