import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask me Anything'),
          centerTitle: true,
        ),
        body: BallAnswer(),
      ),
    );
  }
}

class BallAnswer extends StatefulWidget {
  BallAnswer({Key key}) : super(key: key);
  @override
  _BallAnswerState createState() => _BallAnswerState();
}

class _BallAnswerState extends State<BallAnswer> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
