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

  /// Callback event during screen start
  void init() {
    model.viewCallbacks.viewCreatedCallback(viewCreated);
  }

  /// Event callback when the view already created.
  void viewCreated() {}
}
