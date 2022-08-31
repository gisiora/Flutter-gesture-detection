import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Games Start soon'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {


  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdice=3;
  int rightdice=5;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState((){
                  leftdice=Random().nextInt(6)+1;
                  rightdice=Random().nextInt(6)+1;
                });

              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton (
              onPressed: (){
                setState((){
                  leftdice=Random().nextInt(6)+1;
                  rightdice=Random().nextInt(6)+1;

                });

              },

              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}




