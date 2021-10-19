import 'package:whatsapp_clone/models/story_model.dart';

class User {
  String name;
  String message;
  String time;
  final List<StoryModel>? stories;
  String pfpurl;
  String about;
  User(
      {required this.name,
      this.stories,
      required this.message,
      required this.time,
      required this.about,
      required this.pfpurl});
}
