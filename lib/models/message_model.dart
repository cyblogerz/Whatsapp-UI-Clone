import 'package:whatsapp_clone/models/user_model.dart';

class Message {
  final String msg;
  final bool readStatus;
  final String time;
  final UserModel sender;
  final UserModel recepient;

  Message(
      {required this.msg,
      required this.readStatus,
      required this.time,
      required this.recepient,
      required this.sender});
}
