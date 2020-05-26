import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soph/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(App());
  });
}
