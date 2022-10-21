import 'package:whatsapp_clone/models/user_model.dart';

class Message {
  final String msg;
  final bool readStatus;
  final String time;
  final int uid;

  Message(
      {required this.msg,
      required this.readStatus,
      required this.time,
      required this.uid});
}
