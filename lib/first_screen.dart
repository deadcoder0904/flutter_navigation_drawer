import 'package:flutter/material.dart';

import 'package:flutter_navigation_drawer/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Go to Second Screen'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ),
          );
        },
      ),
    );
  }
}
