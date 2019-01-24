import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view_model.dart';

class BaseModel {
  BaseViewModel viewModel;
  BaseView view;

  ViewCallbacks viewCallbacks = ViewCallbacks();
}

class OnCallCommand {
  List<Function> callbacks = new List();

  void addCallbackObject<T>(Function(T value) fun) {
    callbacks.add(fun);
  }

  void addCallback(Function() fun) {
    callbacks.add(fun);
  }

  void clearCallbacks() {
    callbacks.clear();
  }

  void onCallWithValue<T>(T value) {
    callbacks.forEach((fun) => fun(value));
  }

  void onCall() {
    callbacks.forEach((fun) => fun());
  }
}

class ViewCallbacks {
  Function _viewCreated;
  Function _viewRefresh;

  void viewCreatedAction() {
    if (_viewCreated != null) {
      _viewCreated();
    }
  }

  void viewRefreshdAction() {
    if (_viewRefresh != null) {
      _viewRefresh();
    }
  }

  void viewCreatedCallback(Function() fun) {
    _viewCreated = fun;
  }

  void viewRefreshCallback(Function() fun) {
    _viewRefresh = fun;
  }
}
