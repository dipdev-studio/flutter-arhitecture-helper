import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_model.dart';

abstract class BaseView<M extends BaseModel> extends StatelessWidget {
  final M _model;
  M get model => _model;

  BaseView(this._model);

  Future<T> navigateTo<T extends Object>(
      BuildContext context, Widget widget, bool clear) {
    if (clear) {
      return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => widget),
          (Route<dynamic> route) => false);
    } else {
      return Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => widget),
      );
    }
  }

  bool navigateBack<T extends Object>(BuildContext context, [T result]) {
    return Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    var view = getView(context);
    model?.viewCallbacks?.viewCreatedAction();
    return view;
  }

  Widget getView(BuildContext context);
}
