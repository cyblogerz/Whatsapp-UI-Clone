import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/74711322?v=4'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.teal[900],
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              child: Text(
                'A Whatsapp UI clone developed by Pranav Ajay(Cyblogerz)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
