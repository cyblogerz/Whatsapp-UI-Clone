import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call_log_model.dart';
import 'package:whatsapp_clone/widgets/call_tile.dart';

class CallList extends StatefulWidget {
  final List<CallLog> callLogs;

  CallList({required this.callLogs});

  @override
  State<CallList> createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CallTile(
            name: widget.callLogs[index].name,
            route: widget.callLogs[index].route,
            status: widget.callLogs[index].status,
            pfpurl: widget.callLogs[index].pfpurl,
            time: widget.callLogs[index].time,
          );
        },
        itemCount: widget.callLogs.length,
      ),
    );
  }
}
