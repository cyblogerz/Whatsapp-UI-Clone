import 'package:flutter/material.dart';

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
