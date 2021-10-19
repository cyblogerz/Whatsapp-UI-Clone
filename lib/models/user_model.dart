import 'package:whatsapp_clone/models/story_model.dart';

class UserModel {
  String name;
  String? message;
  String? time;
  final List<StoryModel>? stories;
  String pfpurl;
  String? about;
  UserModel(
      {required this.name,
      this.stories,
      this.message,
      this.time,
      this.about,
      required this.pfpurl});
}
