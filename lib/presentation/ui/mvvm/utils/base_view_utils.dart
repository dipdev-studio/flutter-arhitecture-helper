import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_model_utils.dart';

class BaseViewUtils<M extends BaseModelUtils> {
  Future<T> navigateTo<T extends Object>(
      BuildContext context, Widget widget, bool clear,
      {bool material = true}) async {
    if (clear) {
      return await Navigator.pushAndRemoveUntil(
          context,
          getPageRoute(widget, material: material),
          (Route<dynamic> route) => false);
    } else {
      return await Navigator.push(
        context,
        getPageRoute(widget, material: material),
      );
    }
  }

  Route<T> getPageRoute<T extends Object>(Widget widget,
      {bool material = true}) {
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
