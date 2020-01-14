import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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

  void changeDiceNumber(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 2,
//          child: Image(
//            width: 200.0,
//            image: AssetImage('images/dice1.png'),
//          ),
            child: FlatButton(
              onPressed: (){
                changeDiceNumber();
              },
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
//          flex: 1,
//          child: Image(
//            width: 200.0,
//            image: AssetImage('images/dice1.png'),
//          ),
            child: FlatButton(
              onPressed: (){
                changeDiceNumber();
              },
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


class DicePage1 extends StatelessWidget {

  var leftDiceNumber = 4;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 2,
//          child: Image(
//            width: 200.0,
//            image: AssetImage('images/dice1.png'),
//          ),
            child: FlatButton(
              onPressed: (){
                print('left button');
              },
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
//          flex: 1,
//          child: Image(
//            width: 200.0,
//            image: AssetImage('images/dice1.png'),
//          ),
            child: FlatButton(
              onPressed: (){
                print('right button');
              },
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}

