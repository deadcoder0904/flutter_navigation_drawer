import 'package:flutter/material.dart';

import 'package:flutter_navigation_drawer/tabs.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to Tabs Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tabs(),
              ),
            );
          },
        ),
      ),
    );
  }
}
