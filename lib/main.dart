import 'package:flutter/material.dart';

import 'package:flutter_navigation_drawer/navigation_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: NavigationDrawer(),
    );
  }
}
