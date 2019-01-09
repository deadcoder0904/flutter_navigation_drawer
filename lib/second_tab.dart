import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  int counter;
  _SecondTabState({this.counter});

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 72,
                  color: Colors.black87,
                ),
              ),
            ),
            RaisedButton(
              child: Text('Press Me'),
              onPressed: () {
                setState(() {
                  this.counter++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
