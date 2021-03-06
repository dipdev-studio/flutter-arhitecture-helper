import 'package:flutter/widgets.dart';

class BaseModelUtils {
  List<Function(BuildContext context)> functionsWithContext = [];

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

  Function _viewResumed;
  Function _viewInactive;
  Function _viewPaused;
  Function _viewSuspending;

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

  void viewResumedAction() {
    if (_viewResumed != null) {
      _viewResumed();
    }
  }

  void viewInactiveAction() {
    if (_viewInactive != null) {
      _viewInactive();
    }
  }

  void viewPausedAction() {
    if (_viewPaused != null) {
      _viewPaused();
    }
  }

  void viewSuspendingAction() {
    if (_viewSuspending != null) {
      _viewSuspending();
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

  void viewResumedCallback(Function() fun) {
    _viewResumed = fun;
  }

  void viewInactiveCallback(Function() fun) {
    _viewInactive = fun;
  }

  void viewPausedCallback(Function() fun) {
    _viewPaused = fun;
  }

  void viewSuspendingCallback(Function() fun) {
    _viewSuspending = fun;
  }
}
