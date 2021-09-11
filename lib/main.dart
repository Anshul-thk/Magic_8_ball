import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.white,
        body: magic_ball(),
        ),
      ),
    );


  class magic_ball extends StatefulWidget {
    const magic_ball({Key key}) : super(key: key);

    @override
    _magic_ballState createState() => _magic_ballState();
  }

  class _magic_ballState extends State<magic_ball> {
    int magic_ball_number=1;
    RandomNumber(){
      magic_ball_number= Random().nextInt(5)+1;
    }
    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$magic_ball_number.png'),
              onPressed: (){
                setState(() {
                  RandomNumber();
                });
              },
            ),
          )
        ],
      );
    }
  }
