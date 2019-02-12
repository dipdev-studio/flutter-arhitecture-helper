import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_model.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget> {
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
    var view = getView().build(context);
    model?.viewCallbacks?.viewCreatedAction();
    return view;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => model?.viewCallbacks?.viewInitStateAction());
  }

  void updateUI([VoidCallback callback]) {
    if (mounted) {
      if (callback != null) {
        setState(callback);
      } else {
        setState(() {});
      }
    }
  }

  BaseView<M> getView();
}
