import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_model_utils.dart';

import 'base_model.dart';
import 'base_view.dart';

abstract class BaseViewModel<M extends BaseModel, V extends BaseView<M>>
    extends BaseViewModelUtils {
  BaseViewModel(V view) : super(view, view.model);

  V get view => viewUtils as V;
  M get model => modelUtils as M;

  void init() {
    model.viewCallbacks.viewCreatedCallback(viewCreated);
    model.viewCallbacks.viewRefreshCallback(viewRefresh);
    model.viewCallbacks.viewInitStateCallback(initState);
    model.viewCallbacks.viewDisposedCallback(viewDisposed);
    model.viewCallbacks.viewResumedCallback(viewResumed);
    model.viewCallbacks.viewInactiveCallback(viewInactive);
    model.viewCallbacks.viewPausedCallback(viewPaused);
    model.viewCallbacks.viewSuspendingCallback(viewSuspending);
    model.loadingShow.addCallback(loadingShow);
    model.loadingHide.addCallback(loadingHide);
  }

  void viewCreated() {}

  void viewRefresh() {}

  void initState() {}

  void viewDisposed() {}

  void viewResumed() {}

  void viewInactive() {}

  void viewPaused() {}

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
