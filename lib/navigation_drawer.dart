import 'package:flutter/material.dart';

import 'package:flutter_navigation_drawer/drawer_item.dart';
import 'package:flutter_navigation_drawer/first_screen.dart';
import 'package:flutter_navigation_drawer/second_screen.dart';
import 'package:flutter_navigation_drawer/tabs.dart';

class NavigationDrawer extends StatefulWidget {
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int _selectionIndex = 0;
  final drawerItems = [
    DrawerItem("First Screen", Icons.looks_one),
    DrawerItem("Second Screen", Icons.looks_two),
    DrawerItem("Tabs", Icons.tab),
  ];

  _getDrawerItemScreen(int pos) {
    switch (pos) {
      case 1:
        return SecondScreen();
      case 2:
        return Tabs();
      default:
        return NavigationDrawer();
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectionIndex = index;
      _getDrawerItemScreen(_selectionIndex);
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _getDrawerItemScreen(_selectionIndex),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add(ListTile(
        leading: Icon(d.icon),
        title: Text(
          d.title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
        selected: i == _selectionIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Akshay Kadam (A2K)'),
              accountEmail: Text('a2k@gmail.com'),
            ),
            Column(
              children: drawerOptions,
            ),
          ],
        ),
      ),
      body: FirstScreen(),
    );
  }
}
