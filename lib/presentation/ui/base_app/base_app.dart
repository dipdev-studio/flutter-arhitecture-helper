import 'package:flutter/widgets.dart';

import '../mvvm/stateless/base_screen.dart';
import 'base_app_config.dart';
import 'base_app_model.dart';
import 'base_app_view.dart';
import 'base_app_view_model.dart';

class BaseApp extends BaseScreen<BaseAppModel, BaseAppView, BaseAppViewModel> {
  BaseApp(BaseAppConfig appConfig) : super(BaseAppModel(appConfig));

  @override
  BaseAppView initView(BaseAppModel model) {
    return BaseAppView(model);
  }

  @override
  BaseAppViewModel initViewModel(BaseAppView view) {
    return BaseAppViewModel(view);
  }

  void addFunctionWithRunOnContext(Function(BuildContext context) fun) {
    model.functionsWithContext.add(fun);
  }

  void updateAppConfig(BaseAppConfig appConfig) {
    model.appConfig = appConfig;
  }
}
