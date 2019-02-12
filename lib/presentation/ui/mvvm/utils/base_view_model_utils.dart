
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_model_utils.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_utils.dart';

abstract class BaseViewModelUtils<M extends BaseModelUtils, V extends BaseViewUtils<M>> {
  V _view;
  M _model;

  V get view => _view;
  M get model => _model;

  BaseViewModelUtils(this._view) {
    _model = _view.model;
    init();
  }

  void init() async {
    model.viewCallbacks.viewCreatedCallback(viewCreated);
    model.viewCallbacks.viewRefreshCallback(viewRefresh);
    model.viewCallbacks.viewInitStateCallback(initState);
  }

  void viewCreated() {}

  void viewRefresh() {}

  void initState() {}
}