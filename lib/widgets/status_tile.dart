import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/widgets/add_stat.dart';

class StatusTile extends StatelessWidget {
  final String pfpurl;
  final String name;
  final String time;
  final bool viewed;
  final bool isMe;

  StatusTile(
      {required this.pfpurl,
      required this.viewed,
      required this.isMe,
      required this.name,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: isMe
          ? AddCircle(pfpurl: pfpurl)
          : StatusCircle(
              pfpurl: pfpurl,
              viewed: viewed,
            ),
      subtitle: Text(time),
    );
  }
}

class StatusCircle extends StatelessWidget {
  final bool viewed;
  final String pfpurl;
  StatusCircle({required this.pfpurl, required this.viewed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: viewed ? Colors.green : Colors.white, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(pfpurl),
          radius: 25,
        ),
      ),
    );
  }
}

class AddCircle extends StatelessWidget {
  final String pfpurl;
  AddCircle({required this.pfpurl});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(pfpurl),
          radius: 25,
        ),
        CircleAvatar(
          backgroundColor: Colors.teal[900],
          child: const Icon(Icons.add),
          radius: 5,
        ),
      ],
    );
  }
}
