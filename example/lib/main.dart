import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_app.dart';

import 'splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseApp.getApp(
        'DipDev Studio',
        ThemeData(
          primarySwatch: Colors.blue,
        ),
        new SplashScreen());
  }
}
