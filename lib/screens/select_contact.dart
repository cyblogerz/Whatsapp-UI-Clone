import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/widgets/user_tile.dart';

class SelectContact extends StatelessWidget {
  final List<UserModel> userTiles;

  SelectContact({required this.userTiles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: ListTile(
          title: Text(
            'Select Contact',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            '${userTiles.length} contacts',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          OptionTile(
              text: 'New Group',
              icon: Icon(
                Icons.group,
                color: Colors.white,
              )),
          OptionTile(
              text: 'New Contact',
              icon: Icon(
                Icons.person_add,
                color: Colors.white,
              )),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return UserTile(
                id: userTiles[index].id,
                name: userTiles[index].name,
                about: userTiles[index].about!,
                pfpurl: userTiles[index].pfpurl,
              );
            },
            itemCount: userTiles.length,
          ),
        ],
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String text;
  final Widget icon;

  // final Function()? tapCallback;
  OptionTile({
    required this.text,
    // required this.tapCallback,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => ChatScreen(
          //               name: name,
          //               pfpurl: pfpurl,
          //               onlineStatus: pseudoStatus,
          //             )));
        },
        child: ListTile(
          leading: CircleAvatar(
            // backgroundImage: NetworkImage(pfpurl),
            child: icon,
            backgroundColor: Colors.teal[900],
            radius: 25,
          ),
          title: Text(text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
          // subtitle: Text(about),
        ),
      ),
    );
  }
}
