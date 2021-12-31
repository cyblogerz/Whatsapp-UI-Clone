import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/models/user_model.dart';

class DataProvider with ChangeNotifier {
  bool height = false;
  String _searchKeyword = "";
  List<UserModel> search_list = [];
  List<UserModel> users = [
    UserModel(
        name: 'Narendra Modi',
        about: 'Prime Minister',
        message: 'Mere pyari desh vasiyo',
        time: '10:50',
        pfpurl: 'https://wallpapercave.com/wp/wp6727826.jpg'),
    UserModel(
        name: 'Sachin Tendulkar',
        about: 'Chase your dreams 🙂',
        message: 'Yeah, I will check on that',
        time: '2:20',
        pfpurl: 'https://wallpapercave.com/wp/wp3990002.jpg'),
    UserModel(
        name: 'Salman Khan',
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
    return [...users];
  }

  List<UserModel> get getsearchList {
    return [...search_list];
  }

  void updateSearchList(String s) {
    search_list.clear();
    _searchKeyword = s;
    // print(_searchKeyword);
    _searchKeyword.toLowerCase();
    search_list.addAll([...users].where((element) =>
        element.name.toLowerCase().contains(_searchKeyword) &&
        !search_list.contains(element)));
    notifyListeners();
  }

  void clearSearch() {
    search_list.clear();
    _searchKeyword = "";
    notifyListeners();
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
}
