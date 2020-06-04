import 'package:flutter/material.dart';

class InitialBooks extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InitialBooksState();
}

class _InitialBooksState extends State<InitialBooks> {
  int _value = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(top: 200, left: 50, right: 50, bottom: 50),
              child: Text(
                "About how many books do you read each year currently?",
                style: TextStyle(fontFamily: 'Open Sans', fontSize: 28),
                textAlign: TextAlign.center,
              )),

          Slider(
            value: _value.toDouble(),
            min: 0.0,
            max: 20.0,
            divisions: 20,
            activeColor: Colors.red,
            inactiveColor: Colors.blue,
            label: _value.toString() + " books",
            onChanged: (double newValue) {
              setState(() {
                _value = newValue.round();
              });
            },
          )
          //Slider(),
        ],
      ),
    );
  }
}
