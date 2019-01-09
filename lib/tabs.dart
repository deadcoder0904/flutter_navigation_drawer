import 'package:flutter/material.dart';

import 'package:flutter_navigation_drawer/second_tab.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'First Tab',
              ),
              Tab(
                icon: Icon(Icons.add_circle),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('You\'ve Selected First Tab'),
            ),
            SecondTab(),
          ],
        ),
      ),
    );
  }
}
