import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/models/user_model.dart';

class Message with ChangeNotifier {
  final String msg;
  final bool readStatus;
  bool isMe;
  final String time;
  final int uid;

  Message(
      {required this.msg,
      this.isMe = false,
      required this.readStatus,
      required this.time,
      required this.uid});
}
