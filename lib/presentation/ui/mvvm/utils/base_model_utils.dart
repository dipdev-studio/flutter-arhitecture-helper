import 'package:flutter/widgets.dart';

class BaseModelUtils {
  ViewCallbacks viewCallbacks = ViewCallbacks();

  BuildContext context;
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
  Function _viewInitState;
  Function _viewDisposed;

  void viewCreatedAction() {
    if (_viewCreated != null) {
      _viewCreated();
      _viewCreated = null;
    }
  }

  void viewRefreshedAction() {
    if (_viewRefresh != null) {
      _viewRefresh();
    }
  }

  void viewInitStateAction() {
    if (_viewInitState != null) {
      _viewInitState();
    }
  }

  void viewDisposedAction() {
    if (_viewDisposed != null) {
      _viewDisposed();
    }
  }

  void viewCreatedCallback(Function() fun) {
    _viewCreated = fun;
  }

  void viewRefreshCallback(Function() fun) {
    _viewRefresh = fun;
  }

  void viewInitStateCallback(Function() fun) {
    _viewInitState = fun;
  }

  void viewDisposedCallback(Function() fun) {
    _viewDisposed = fun;
  }
}
