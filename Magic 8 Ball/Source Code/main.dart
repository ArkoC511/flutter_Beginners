import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$n.png'),
              onPressed: () {
                setState(() {
                  n = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
