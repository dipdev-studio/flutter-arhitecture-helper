import 'package:flutter/widgets.dart';

import '../mvvm/stateless/base_view_model.dart';
import 'base_app_model.dart';
import 'base_app_view.dart';

class BaseAppViewModel extends BaseViewModel<BaseAppModel, BaseAppView> {
  BaseAppViewModel(BaseAppView view) : super(view);

  runWithContext<T>(Function(BuildContext context) fun) {
    model.functionsWithContext.add(fun);
  }
}
