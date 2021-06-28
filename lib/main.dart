import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          title: Text(
            'Dice Roll',
            style: TextStyle(color: Colors.green),
          ),
          elevation: 0.0,
          backgroundColor: Colors.green[50],
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 2;

  void randomNumber() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: TextButton(
                onPressed: () {
                  randomNumber();
                },
                child: Image.asset('images/dice$leftDiceNo.png'),
              ),
            ),
          ),
          // Expanded(
          //   child: TextButton(
          //     onPressed: () {
          //       randomNumber();
          //     },
          //     child: Image.asset('images/dice$rightDiceNo.png'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
