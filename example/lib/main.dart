import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_app/base_app.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_app/base_app_config.dart';

import 'splash/splash_screen.dart';

var theme = ThemeData(
  primarySwatch: Colors.blue,
);
var appCongig = BaseAppConfig(
    isMaterial: true,
    title: 'DipDev Studio',
    theme: theme,
    color: theme.primaryColor,
    home: new SplashScreen());
var app = BaseApp(appCongig);

void main() => runApp(app);
