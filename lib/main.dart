import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MyApp()
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Ask Me Anything',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.blue[900]
        ),
        backgroundColor: Colors.blue[600],
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('images/ball$ballNumber.png'),
                ),
                onPressed: (){
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                },
              )
          )
        ],
      ),
    );
  }
}
