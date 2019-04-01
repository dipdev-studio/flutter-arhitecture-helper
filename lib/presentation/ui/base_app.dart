import 'package:flutter/material.dart';

class BaseApp {
 static Widget getApp(String title, ThemeData theme, Widget home,
      {bool material = true, List<NavigatorObserver> navigatorObservers}) {
    if (material) {
      return MaterialApp(title: title, theme: theme, home: home, debugShowCheckedModeBanner: false, navigatorObservers: navigatorObservers);
    } else {
      return WidgetsApp(
        home: home,
        color: theme.primaryColor,
        title: title,
      );
    }
  }
}
