import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 24.0),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: MagicEightBall(),
        backgroundColor: Colors.blue[500],
      ),
    ),
  );
}

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  var ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeEightBallImage();
              },
              child: Image.asset('images/ball$ballNo.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeEightBallImage() {
    setState(() {
      ballNo = Random().nextInt(5) + 1;
    });
  }
}
