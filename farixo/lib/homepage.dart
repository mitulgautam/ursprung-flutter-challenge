import 'package:farixo/pages/new_member.dart';
import 'package:farixo/pages/chat_screen.dart';
import 'package:farixo/pages/notifications.dart';
import 'package:farixo/pages/professional_member.dart';
import 'package:farixo/pages/profile.dart';
import 'package:flutter/material.dart';

import 'JobHome.dart';
import 'jobsuggestion.dart';

class ChatUI extends StatefulWidget {
  @override
  _ChatUIState createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 2, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              color: Colors.black,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    new TabBar(
                      tabs: <Widget>[
                        new Tab(icon: new Icon(Icons.person_add)),
                        new Tab(icon: new Icon(Icons.work)),
                        new Tab(icon: new Icon(Icons.message)),
                        new Tab(icon: new Icon(Icons.notifications)),
                        new Tab(icon: new Icon(Icons.person_pin))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              new Newmember(),
              Job(),
              new ChatScreen(),
              new Notifications(),
              new Profile(),
            ],
          ),
        ),
      ),
    );
  }
}
