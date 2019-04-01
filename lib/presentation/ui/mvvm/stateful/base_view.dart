import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_utils.dart';

import '../../widgets/loading_widget.dart';
import 'base_model.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget>
    with AutomaticKeepAliveClientMixin, BaseViewUtils {
  final M _model;
  final bool keepAlive;

  M get model => _model;

  BaseView(this._model, {this.keepAlive = false});

  @override
  Widget build(BuildContext context) {
    Widget widget = Directionality(
        textDirection: TextDirection.ltr,
        child: new Stack(
            children: <Widget>[getView(context), getLoadingWidget()]));
    model?.viewCallbacks?.viewCreatedAction();
    model?.context = context;
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
