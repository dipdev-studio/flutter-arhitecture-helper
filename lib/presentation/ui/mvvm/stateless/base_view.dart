import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_utils.dart';

import 'base_model.dart';

abstract class BaseView<M extends BaseModel> extends StatelessWidget
    with BaseViewUtils {
  final M _model;
  M get model => _model;

  BaseView(this._model);

  @override
  Widget build(BuildContext context) {
    var view = getView(context);
    model?.viewCallbacks?.viewCreatedAction();
    model?.context = context;
    return view;
  }

  /// This method needs to be implemented to provide the Widget for display.
  Widget getView(BuildContext context);
}
