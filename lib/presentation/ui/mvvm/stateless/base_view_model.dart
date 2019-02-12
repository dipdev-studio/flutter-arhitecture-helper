import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_view.dart';

abstract class BaseViewModel<M extends BaseModel, V extends BaseView<M>> {
  V _view;
  M _model;

  V get view => _view;
  M get model => _model;

  BaseViewModel(this._view) {
    _model = _view.model;
    init();
  }

  void init() {
    model.viewCallbacks.viewCreatedCallback(viewCreated);
  }

  void viewCreated() {}
}
