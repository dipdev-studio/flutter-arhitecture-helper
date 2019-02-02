import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_model.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget> {
  bool isLoading = false;

  M _model;
  M get model => _model;

  BaseView(this._model);

  @override
  Widget build(BuildContext context) {
    var view = getView().build(context);
    model?.viewCallbacks?.viewCreatedAction();
    return view;
  }

  BaseView<M> getView();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => model?.viewCallbacks?.viewInitStateAction());
  }

  void navigateTo(BuildContext context, Widget widget, bool clear) {
    if (clear) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget),
          (Route<dynamic> route) => false);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );
    }
  }
}
