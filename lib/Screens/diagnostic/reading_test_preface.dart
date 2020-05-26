import 'package:flutter/material.dart';

class ReadingTestPreface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 40),
        child:
            Image(image: AssetImage('assets/images/soph_reading_preface.png')),
      ),
      Container(
        margin: EdgeInsets.only(top: 20, right: 30, left: 30),
        child: Text(
          'Reading Diagnostic',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Open Sans'),
        ),
      ),
      Container(child: Text('-  -  -', style: TextStyle(fontSize: 20))),
      Container(
          margin: EdgeInsets.only(top: 20, right: 35, left: 35),
          alignment: Alignment.center,
          child: Text(
              'To get an idea of how fast you read, swipe to the next page and take a quick test.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Open Sans', fontSize: 18))),
    ]));
  }
}
