import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_model_utils.dart';

import 'base_view.dart';
import 'base_view_model.dart';

class BaseModel with BaseModelUtils {
  BaseViewModel viewModel;
  BaseView view;

  /// Variable indicating data loading status.
  bool loading = false;

  /// The method is responsible for displaying the loading indicator.
  OnCallCommand loadingShow = new OnCallCommand();
  
  /// The method is responsible for displaying the loading indicator.
  OnCallCommand loadingHide = new OnCallCommand();
}
