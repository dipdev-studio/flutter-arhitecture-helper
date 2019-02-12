import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_model.dart';

abstract class BaseView<M extends BaseModel> extends StatelessWidget {
  BuildContext context;

  final M _model;
  M get model => _model;

  BaseView(this._model);

  Future<T> navigateTo<T extends Object>(Widget widget, bool clear) {
    if (clear) {
      return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget),
          (Route<dynamic> route) => false);
    } else {
      return Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );
    }
  }

  bool navigateBack<T extends Object>([T result]) {
    return Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    context = context;
    var view = getView().build(context);
    model?.viewCallbacks?.viewCreatedAction();
    return view;
  }

  BaseView<M> getView();
}
