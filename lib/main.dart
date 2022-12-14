import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
        MaterialApp(
          home: Ballpage(),

        ),
      );
class Ballpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ask Me Anything'),

      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() =>_BallState();
  }
class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}


