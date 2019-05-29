import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_utils.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/widgets/loading_widget.dart';

import 'base_model.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget>
    with AutomaticKeepAliveClientMixin, BaseViewUtils {
  final bool keepAlive;
  final bool viewActions;

  M _model;
  M get model => _model;

  BaseView(this._model, {this.viewActions = true, this.keepAlive = false});

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
    if (viewActions) {
      WidgetsBinding.instance.addPostFrameCallback(
          (_) => model?.viewCallbacks?.viewInitStateAction());
      SystemChannels.lifecycle.setMessageHandler((msg) {
        if (msg == AppLifecycleState.resumed.toString()) {
          model?.viewCallbacks?.viewResumedAction();
        } else if (msg == AppLifecycleState.inactive.toString()) {
          model?.viewCallbacks?.viewInactiveAction();
        } else if (msg == AppLifecycleState.paused.toString()) {
          model?.viewCallbacks?.viewPausedAction();
        } else if (msg == AppLifecycleState.suspending.toString()) {
          model?.viewCallbacks?.viewSuspendingAction();
        }
      });
    }
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

  /// This method needs to be implemented to provide the Widget for display.
  Widget getView(BuildContext context);

  @override
  void dispose() {
    model.viewCallbacks.viewDisposedAction();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => keepAlive;

  Widget getLoadingWidget() {
    return new LoadingWidget.android(showing: model.loading);
  }
}
