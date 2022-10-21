import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/models/story_model.dart';

class UserModel with ChangeNotifier {
  String name;
  String? message;
  String? time;
  int id;
  final List<StoryModel>? stories;
  String pfpurl;
  String? about;
  UserModel(
      {required this.name,
      required this.id,
      this.stories,
      this.message,
      this.time,
      this.about,
      required this.pfpurl});
}
