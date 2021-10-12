import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';
import 'package:whatsapp_clone/widgets/status_tile.dart';

class StatusPage extends StatelessWidget {
  final List<Status> recentStatus;
  final List<Status> viewedStatus;

  StatusPage({required this.recentStatus, required this.viewedStatus});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StatusTile(
          isMe: true,
          viewed: false,
          name: 'My status',
          time: 'Tap to add status update',
          pfpurl: 'https://avatars.githubusercontent.com/u/74711322?v=4',
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Recent Updates',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: recentStatus.length,
          itemBuilder: (BuildContext context, int index) {
            return StatusTile(
              isMe: false,
              name: recentStatus[index].name,
              pfpurl: recentStatus[index].pfpurl,
              time: recentStatus[index].time,
              viewed: true,
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Viewed Updates',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: viewedStatus.length,
          itemBuilder: (BuildContext context, int index) {
            return StatusTile(
              isMe: false,
              name: viewedStatus[index].name,
              pfpurl: viewedStatus[index].pfpurl,
              time: viewedStatus[index].time,
              viewed: false,
            );
          },
        ),
      ],
    );
  }
}

// List<Status> recentStatus() {
//   List<Status> hello = [];
//   return hello;
