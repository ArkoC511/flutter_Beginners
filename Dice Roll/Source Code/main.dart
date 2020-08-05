import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Center(
            child: Text('DICEE'),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1, right=6;
  void generate(){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$left.png'),
              onPressed: () {
                generate();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$right.png'),
              onPressed: () {
                generate();
              },
            ),
          ),
        ],
      ),
    );
  }
}
