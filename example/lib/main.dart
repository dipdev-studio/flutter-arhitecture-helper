import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_app/base_app.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_app/base_app_config.dart';

import 'splash/splash_screen.dart';

var theme = new ThemeData(
  primarySwatch: Colors.blue,
);
var appConfig = new BaseAppConfig(
    isMaterial: true,
    title: 'DipDev Studio',
    theme: theme,
    color: theme.primaryColor,
    home: new SplashScreen(),
    showPerformanceOverlay: true,
    debugShowCheckedModeBanner: true);
var app = new BaseApp(appConfig);

void main() => runApp(app);