// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String time;
  final bool route;
  final bool status;
  final String pfpurl;
  CallTile(
      {required this.name,
      required this.route,
      required this.status,
      required this.pfpurl,
      required this.time});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(pfpurl),
          backgroundColor: Colors.blue,
          radius: 25,
        ),
        title: Text(name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        subtitle: Row(
          children: <Widget>[
            Icon(
              route ? Icons.south_west : Icons.north_east,
              color: status ? Colors.green : Colors.red,
              size: 16,
            ),
            Text(
              time,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.call,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
