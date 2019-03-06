import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/loading_widget.dart';
import 'base_model.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget>
    with AutomaticKeepAliveClientMixin {
  final M _model;
  final bool keepAlive;

  M get model => _model;

  BaseView(this._model, {this.keepAlive = false});

  Future<T> navigateTo<T extends Object>(
      BuildContext context, Widget widget, bool clear) {
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

  bool navigateBack<T extends Object>(BuildContext context, [T result]) {
    return Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    Widget widget = Directionality(
        textDirection: TextDirection.ltr,
        child: new Stack(
            children: <Widget>[getView(context), getLoadingWidget()]));
    model?.viewCallbacks?.viewCreatedAction();
    return widget;
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

  Widget getView(BuildContext context);

  @override
  void dispose() {
    model.viewCallbacks.viewDisposedAction();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => keepAlive;

  Widget getLoadingWidget() {
    return new LoadingWidget(showing: model.loading);
  }
}
