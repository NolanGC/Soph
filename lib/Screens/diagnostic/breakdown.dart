import 'package:flutter/material.dart';

class Breakdown extends StatefulWidget {
  var wpm;
  Breakdown(this.wpm);
  @override
  State<StatefulWidget> createState() => _BreakdownState();
}

class _BreakdownState extends State<Breakdown> {
  var _value = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Spacer(),
          Container(
              margin: EdgeInsets.all(50),
              child: CustomPaint(
                painter: ShapesPainter(_value),
              )),
          Spacer(),
          Container(
              child: Text('Above: Proportion of 18 hour day visualized.'),
              margin: EdgeInsets.all(30)),
          Slider(
            value: _value.toDouble(),
            min: 0.0,
            max: 120.0,
            divisions: 24,
            activeColor: Colors.red,
            inactiveColor: Colors.blue,
            label: _value.toString() + " minutes",
            onChanged: (double newValue) {
              setState(() {
                _value = newValue.round();
              });
            },
          ),
          Container(
              margin: EdgeInsets.all(30),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Open Sans'),
                    children: <TextSpan>[
                      TextSpan(text: 'If you spent just '),
                      TextSpan(
                          text: _value.toString() + " minutes ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "reading each day at your reading speed, you could read about "),
                      TextSpan(
                          text: ((widget.wpm * _value * 365 / 90000).round())
                              .toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: " books per year.")
                    ]),
              )),
          Spacer(),
          Spacer(),
          Spacer(),
        ],
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  int minutes;
  ShapesPainter(this.minutes);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.black;
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: 200.0,
            height: 200.0),
        paint);
    paint.color = Colors.white;
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: 198.0,
            height: 198.0),
        paint);
    paint.color = Colors.red;
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: 198.0 * (minutes / 1080),
            height: 198.0 * (minutes / 1080)),
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
