import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/providers/myprovider.dart';
import 'package:whatsapp_clone/screens/search_list.dart';

class SearchTile extends StatefulWidget {
  @override
  _SearchTileState createState() => _SearchTileState();
  final AnimationController animationController;

  SearchTile(this.animationController);
}

class _SearchTileState extends State<SearchTile> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController tec = new TextEditingController();
    final bool cross_visible = false;
    final height = MediaQuery.of(context).padding.top;
    DataProvider myProvider = Provider.of<DataProvider>(context);
    bool validator(String s) {
      s.trim();
      if (s.length > 0) {
        return true;
      }
      return false;
    }

    void search_func(String s) {
      if (validator(s)) {
        myProvider.updateSearchList(s);
      }
    }

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
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        myProvider.toggle_height();
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
                      showCursor: true,
                      controller: tec,
                      decoration: InputDecoration.collapsed(
                        hintText: "Search...",
                      ),
                      cursorColor: Colors.teal[900],
                      cursorHeight: 23,
                      onChanged: (value) {
                        search_func(value);
                      },
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Chips()
        ],
      ),
    );
  }
}

//For the chips below the search bar
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
                    backgroundColor: Colors.blueGrey[100],
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    labelPadding: EdgeInsets.zero,
                    label: Text("Photos"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[100],
                      child: Icon(
                        Icons.image_rounded,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    backgroundColor: Colors.blueGrey[100],
                    label: Text("Videos"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[100],
                      child: Icon(
                        Icons.videocam_rounded,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    backgroundColor: Colors.blueGrey[100],
                    label: Text("Links"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[100],
                      child: Icon(
                        Icons.link_rounded,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    backgroundColor: Colors.blueGrey[100],
                    label: Text("GIFs"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[100],
                      child: Icon(
                        Icons.gif_rounded,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    backgroundColor: Colors.blueGrey[100],
                    label: Text("Audio"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[100],
                      child: Icon(
                        Icons.headphones_rounded,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Chip(
                    backgroundColor: Colors.blueGrey[100],
                    label: Text("Documents"),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blueGrey[100],
                      child: Icon(
                        Icons.feed_outlined,
                        color: Colors.blueGrey[900],
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
