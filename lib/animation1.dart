import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class anim1 extends StatefulWidget {
  @override
  _anim1State createState() => _anim1State();
}

class _anim1State extends State<anim1> {

double aniheight = 50 ;
double aniwidth = 50 ;
Color anicolor = Colors.green;
var aniborder = BorderRadius.circular(8);


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: aniheight,
          width: aniwidth,
          decoration: BoxDecoration(
            color: anicolor,
            borderRadius: aniborder,
          ),
          duration: Duration(seconds: 3),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            var random = Random();

            aniwidth = random.nextInt(400).toDouble();
            aniheight = random.nextInt(400).toDouble();
            aniborder = BorderRadius.circular(random.nextInt(50).toDouble());
            anicolor = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1
            );
          });
        },
      ),
    );
  }
}
