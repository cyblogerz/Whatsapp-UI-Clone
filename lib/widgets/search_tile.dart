import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/providers/myprovider.dart';
import 'package:whatsapp_clone/screens/search_list.dart';
import 'package:whatsapp_clone/widgets/chip_tile.dart';

class SearchTile extends StatefulWidget {
  @override
  _SearchTileState createState() => _SearchTileState();
  final AnimationController animationController;
  final FocusNode currentFocus;
  SearchTile(
    this.animationController,this.currentFocus
  );
}

class _SearchTileState extends State<SearchTile> {
  TextEditingController tec = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // currentFocus.unfocus();
    final bool cross_visible = false;
    final height = MediaQuery.of(context).padding.top;
    DataProvider myProvider = Provider.of<DataProvider>(context);

    void search_func(String s) {
      s.toLowerCase();
      myProvider.updateSearchList(s.trim());
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
                        if (widget.currentFocus.hasFocus) {
                          widget.currentFocus.unfocus();
                        }
                        tec.clear();
                        myProvider.clearSearch();
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
                      focusNode: widget.currentFocus,
                      controller: tec,
                      decoration: InputDecoration.collapsed(
                        focusColor: Colors.black,
                        hintText: "Search...",
                      ),
                      cursorColor: Colors.teal[700],
                      cursorHeight: 22,
                      cursorWidth: 2.5,
                      cursorRadius: Radius.zero,
                      onChanged: (value) {
                        search_func(value);
                      },
                    ),
                  ),
                ),
                (myProvider.searchWord.length == 0)
                    ? Container()
                    : IconButton(
                        onPressed: () {
                          tec.clear();
                          myProvider.clearSearch();
                        },
                        icon: Icon(Icons.close))
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

