import 'package:farixo/pages/new_member.dart';
import 'package:farixo/pages/chat_screen.dart';
import 'package:farixo/pages/notifications.dart';
import 'package:farixo/pages/professional_member.dart';
import 'package:farixo/pages/profile.dart';
import 'package:flutter/material.dart';

class ChatUI extends StatefulWidget {
  @override
  _ChatUIState createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> with SingleTickerProviderStateMixin{

  TabController _tabController;

  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex:1,length:4);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("To be decided"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon : new Icon(Icons.person_add)), 
            new Tab(icon : new Icon(Icons.group)),
            new Tab(icon : new Icon(Icons.message)),
            new Tab(icon : new Icon(Icons.notifications)),
            new Tab(icon : new Icon(Icons.person_pin))
          ],

        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],

      ),
      body:new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Newmember(),
          new Professional(),
          new ChatScreen(),
          new Notifications(),
          new Profile(),
          
          ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.red,
        child: new Icon(Icons.message,
        color: Colors.white),
        onPressed: () => print("Open Chats"),
      ),
    );
  }
}