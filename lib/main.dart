import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Lucy Dicee'),
          backgroundColor: Colors.amber,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void updateDiceeFace() {
    setState(() {
      leftDiceNumber = getRandom();
      rightDiceNumber = getRandom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
            child: TextButton(
          child: Image.asset('images/dice$leftDiceNumber.png'),
          onPressed: () {
            updateDiceeFace();
          },
        )),
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              updateDiceeFace();
            },
          ),
        )
      ]),
    );
  }

  int getRandom() {
    return Random().nextInt(6) + 1;
  }
}
