import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseViewUtils {
  Future<T> navigateTo<T extends Object>(
      BuildContext context, Widget widget, bool clear,
      [bool material = true]) {
    if (clear) {
      return Navigator.pushAndRemoveUntil(context,
          getPageRoute(widget, material), (Route<dynamic> route) => false);
    } else {
      return Navigator.push(
        context,
        getPageRoute(widget, material),
      );
    }
  }

  Route<T> getPageRoute<T extends Object>(Widget widget,
      [bool material = true]) {
    if (material) {
      return MaterialPageRoute(builder: (BuildContext context) => widget);
    } else {
      return CupertinoPageRoute(builder: (BuildContext context) => widget);
    }
  }

  bool navigateBack<T extends Object>(BuildContext context, [T result]) {
    return Navigator.pop(context, result);
  }
}
