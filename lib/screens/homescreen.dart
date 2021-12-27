// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_home.dart';
import 'package:whatsapp_clone/screens/select_contact.dart';
import 'package:whatsapp_clone/screens/status_list_screen.dart';
import 'package:whatsapp_clone/data.dart';
import 'package:whatsapp_clone/widgets/search_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  final GlobalKey _widgetKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    super.initState();
  }

   Offset offset = Offset(0,0);
  void _getWidgetInfo(_) {
    final RenderBox renderBox =
        _widgetKey.currentContext?.findRenderObject() as RenderBox;

    final Size size = renderBox.size; // or _widgetKey.currentContext?.size
    print('Size: ${size.width}, ${size.height}');

    offset = renderBox.localToGlobal(Offset(size.width/2,size.height/2));
    print('Offset: ${offset.dx}, ${offset.dy}');
    // print(
    //     'Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
          child: Stack(children: [
            AppBar(
              title: Text('WhatsApp'),
              backgroundColor: Colors.teal[900],
              
              actions: [
                IconButton(
                    key: _widgetKey,
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        _getWidgetInfo(_widgetKey);
                      });
                      
                      animationController.forward();
                    },
                    icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
                labelColor: Colors.white,
                indicatorColor: Colors.white,
              ),
            ),
            CircularRevealAnimation(
              child: SearchTile(animationController),
              animation: animation,
              centerOffset: Offset(offset.dx,offset.dy),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SelectContact(userTiles: users)));
          },
          child: Icon(Icons.message_rounded),
          backgroundColor: Colors.teal[900],
        ),
        body: TabBarView(
          children: <Widget>[
            Camera(),
            ChatHome(chatTiles: users),
            StatusPage(recentStatus: recentStatus, viewedStatus: viewedStatus),
            CallList(callLogs: callLogs)
          ],
        ),
      ),
    );
  }
}
