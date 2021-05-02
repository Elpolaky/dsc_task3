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
      title: 'Dice',
      theme: ThemeData.dark(),
      home: MyHomePage(
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int diceNum=1;
  void _dice() {
    setState(() {
      diceNum =Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dice',style: TextStyle(fontSize: 24,color: Colors.orange),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child:  FlatButton(
             onPressed:_dice,
              child: Image.asset('assets/dice$diceNum.png',),
            ),)


          ],
        ),

),)
    ;
  }
}
