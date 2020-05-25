import 'package:flutter/material.dart';
import 'package:soph/Screens/diagnostic/diagnostic.dart';

class App extends StatelessWidget {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Diagnostic());
  }
}
