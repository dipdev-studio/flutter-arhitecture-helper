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
  }

  void viewCreated() {}
}
