import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_model_utils.dart';

import 'base_model.dart';
import 'base_view.dart';

abstract class BaseViewModel<M extends BaseModel, V extends BaseView<M>>
    extends BaseViewModelUtils {
  BaseViewModel(V view) : super(view, view.model);

  /// Getting the view in MVVM
  V get view => viewUtils as V;

  /// Getting the model in MVVM
  M get model => modelUtils as M;

  void initSync() {
    model.viewCallbacks.viewCreatedCallback(viewCreated);
    model.viewCallbacks.viewInitStateCallback(initState);
    model.viewCallbacks.viewDisposedCallback(viewDisposed);
    model.viewCallbacks.viewResumedCallback(viewResumed);
    model.viewCallbacks.viewInactiveCallback(viewInactive);
    model.viewCallbacks.viewPausedCallback(viewPaused);
    model.viewCallbacks.viewSuspendingCallback(viewSuspending);
  }

  /// Callback event during screen start
  void init() async {
    model.viewCallbacks.viewRefreshCallback(viewRefresh);
    model.loadingShow.addCallback(loadingShow);
    model.loadingHide.addCallback(loadingHide);
  }

  /// Event callback when the view already created.
  void viewCreated() {}

  /// Event callback when need to refresh the view.
  void viewRefresh() {}

  /// Event callback when initState finished.
  void initState() {}

  /// Event callback when the view disposed.
  void viewDisposed() {}

  /// Event callback when the application is visible and responding to user input.
  void viewResumed() {}

  /// Event callback when the application is in an inactive state and is not receiving user input.
  void viewInactive() {}

  /// Event callback when the application is not currently visible to the user, not responding to
  /// user input, and running in the background.
  void viewPaused() {}

  /// Event callback when the application is in this state, the engine will not call the
  /// [Window.onBeginFrame] and [Window.onDrawFrame] callbacks.
  /// Android apps in this state should assume that they may enter the
  /// [suspending] state at any time.
  void viewSuspending() {}

  void loadingShow() {
    model.loading = true;
    view.updateUI();
  }

  void loadingHide() {
    model.loading = false;
    view.updateUI();
  }
}
