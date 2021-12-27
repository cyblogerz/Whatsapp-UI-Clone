import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

class SearchTile extends StatefulWidget {
  @override
  _SearchTileState createState() => _SearchTileState();
  final AnimationController animationController;
  SearchTile(this.animationController);
}

class _SearchTileState extends State<SearchTile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).padding.top;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: height,
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (widget.animationController.status ==
                              AnimationStatus.forward ||
                          widget.animationController.status ==
                              AnimationStatus.completed) {
                        widget.animationController.reverse();
                      }
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      size: 26,
                    )),
                Expanded(
                    child: Container(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Search...",
                    ),
                    cursorColor: Colors.teal[900],
                    cursorHeight: 23,
                  ),
                ))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
