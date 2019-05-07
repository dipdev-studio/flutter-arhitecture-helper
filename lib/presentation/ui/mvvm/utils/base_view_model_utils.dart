import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_model_utils.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_utils.dart';

class BaseViewModelUtils<M extends BaseModelUtils, V extends BaseViewUtils<M>> {
  V _view;
  M _model;

  V get viewUtils => _view;
  M get modelUtils => _model;

  BaseViewModelUtils(this._view, this._model) {
    init();
  }

  void init() {}

  runWithContext<T>(Function(BuildContext context) fun) {
    modelUtils.functionsWithContext.add(fun);
  }
}
