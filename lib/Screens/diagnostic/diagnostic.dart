import 'package:flutter/material.dart';
import 'package:soph/Screens/diagnostic/main_page.dart';
import 'package:soph/Screens/diagnostic/typing_test.dart';
import 'package:worm_indicator/indicator.dart';
import 'package:worm_indicator/shape.dart';

class Diagnostic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiagnosticState();
}

class _DiagnosticState extends State<Diagnostic> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  Widget buildPageView() {
    return PageView(
      controller: _controller,
      children: <Widget>[
        MainPage(),
        TypingTest(),
      ],
    );
  }

  Widget buildIndicator(
      Shape shape, double bottomPos, Color color, Color indicatorColor) {
    return Positioned(
        bottom: bottomPos,
        left: 0,
        right: 0,
        child: WormIndicator(
          indicatorColor: indicatorColor,
          color: color,
          length: 3,
          controller: _controller,
          shape: shape,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final circleShape = Shape(
      size: 16,
      shape: DotShape.Circle,
      spacing: 8,
    );
    return Scaffold(
        body: Stack(
      children: <Widget>[
        buildPageView(),
        buildIndicator(
            circleShape, 90, Colors.red, Color.fromARGB(255, 0, 0, 255)),
      ],
    ));
  }
}
