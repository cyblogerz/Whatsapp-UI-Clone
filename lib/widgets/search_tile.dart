import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/providers/myprovider.dart';

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
      if (validator(s)) {}
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
          )
        ],
      ),
    );
  }
}
