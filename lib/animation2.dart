import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class anim2 extends StatefulWidget {
  @override
  _anim2State createState() => _anim2State();
}

class _anim2State extends State<anim2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: WavyAnimatedTextKit(
          speed: Duration(milliseconds: 2000),
          text: ['Welcome to flutter'],
          textStyle: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
