import 'package:flutter/material.dart';
import 'package:soph/Screens/diagnostic/breakdown.dart';
import 'package:soph/Screens/diagnostic/initial_books.dart';
import 'package:soph/Screens/diagnostic/main_page.dart';
import 'package:soph/Screens/diagnostic/reading_test.dart';
import 'package:soph/Screens/diagnostic/reading_test_preface.dart';
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
        InitialBooks(),
        ReadingTestPreface(),
        ReadingTest(),
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
          length: 4,
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
            circleShape, 60, Colors.red, Color.fromARGB(255, 0, 0, 255)),
      ],
    ));
  }
}
