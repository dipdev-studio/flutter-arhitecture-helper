import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_view_model.dart';

import 'base_app_model.dart';
import 'base_app_view.dart';

class BaseAppViewModel extends BaseViewModel<BaseAppModel, BaseAppView> {
  BaseAppViewModel(BaseAppView view) : super(view);
}
