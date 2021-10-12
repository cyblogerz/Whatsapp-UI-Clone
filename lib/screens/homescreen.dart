// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/chat_home.dart';
import 'package:whatsapp_clone/screens/status_list_screen.dart';
import 'package:whatsapp_clone/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.teal[900],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message_rounded),
          backgroundColor: Colors.teal[900],
        ),
        body: TabBarView(
          children: <Widget>[
            Text('This feature will be available soon!'),
            ChatHome(chatTiles: users),
            StatusPage(recentStatus: recentStatus, viewedStatus: viewedStatus),
            CallList(callLogs: callLogs)
          ],
        ),
      ),
    );
  }
}
