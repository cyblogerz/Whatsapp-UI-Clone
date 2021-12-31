import 'package:flutter/material.dart';
class Chips extends StatelessWidget {
  const Chips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: Wrap(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    backgroundColor: Colors.blueGrey[50],
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    labelPadding: EdgeInsets.only(right: 5),
                    label: Text("Photos"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      child: Icon(
                        Icons.image_rounded,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    backgroundColor: Colors.blueGrey[50],
                    labelPadding: EdgeInsets.only(right: 5),
                    label: Text("Videos"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      child: Icon(
                        Icons.videocam_rounded,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    labelPadding: EdgeInsets.only(right: 5),
                    backgroundColor: Colors.blueGrey[50],
                    label: Text("Links"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      child: Icon(
                        Icons.link_rounded,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    labelPadding: EdgeInsets.only(right: 5),
                    backgroundColor: Colors.blueGrey[50],
                    label: Text("GIFs"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      child: Icon(
                        Icons.gif_rounded,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    labelPadding: EdgeInsets.only(right: 5),
                    backgroundColor: Colors.blueGrey[50],
                    label: Text("Audio"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      child: Icon(
                        Icons.headphones_rounded,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    labelPadding: EdgeInsets.only(right: 5),
                    backgroundColor: Colors.blueGrey[50],
                    label: Text("Documents"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[50],
                      child: Icon(
                        Icons.feed_outlined,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
