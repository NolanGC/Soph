import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 40),
        child: Image(image: AssetImage('assets/images/soph_home_2.png')),
      ),
      Container(
        margin: EdgeInsets.only(top: 20, right: 30, left: 30),
        child: RichText(
          text: TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Open Sans'),
              children: <TextSpan>[
                TextSpan(text: 'Welcome to'),
                TextSpan(
                    text: ' Soph',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
        ),
      ),
      Container(child: Text('.  .  .', style: TextStyle(fontSize: 20))),
      Container(
          margin: EdgeInsets.only(top: 20, right: 35, left: 35),
          alignment: Alignment.center,
          child: Text('A guide to rediscovering books in the digital age.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Open Sans', fontSize: 21))),
    ]));
  }
}
