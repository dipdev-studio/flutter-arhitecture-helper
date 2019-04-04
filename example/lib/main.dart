import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_app.dart';

import 'splash/splash_screen.dart';

void main() => runApp(BaseApp.materialApp(
    title: 'DipDev Studio',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new SplashScreen()));
