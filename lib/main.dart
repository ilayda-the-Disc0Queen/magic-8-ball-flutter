import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: EightBallScaffold(),
      ),
    );

class EightBallScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
            child: Text(
          'Ask me anything',
          style: TextStyle(
            fontSize: 30.0,
          ),
        )),
      ),
      backgroundColor: Colors.blue[300],
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballImage = 3;
  void randomImageNumber() {
    setState(() {
      ballImage = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                randomImageNumber();
              },
              child: Image.asset(
                'images/ball$ballImage.png',
                width: 300.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
