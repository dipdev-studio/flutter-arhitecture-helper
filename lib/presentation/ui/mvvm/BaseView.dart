import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/BaseModel.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget> {
  bool isLoading = false;

  M _model;
  M get model => _model;

  BaseView(this._model);

  @override
  Widget build(BuildContext context) {
    var view = getView().build(context);
    if (model != null) model.viewCallbacks.viewCreatedAction();
    return view;
  }

  BaseView<M> getView();

  void navigateTo(BuildContext context, Widget widget, bool clear) {
    if (clear) {
      MaterialPageRoute(builder: (context) => widget);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );
    }
  }
}
