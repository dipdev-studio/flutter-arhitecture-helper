import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_screen.dart';

import 'base_app_config.dart';
import 'base_app_model.dart';
import 'base_app_view.dart';
import 'base_app_view_model.dart';

class BaseApp extends BaseScreen<BaseAppModel, BaseAppView, BaseAppViewModel> {
  final BaseAppConfig _appConfig;

  BaseApp(this._appConfig) : super(new BaseAppModel(_appConfig));

  @override
  BaseAppView initView(BaseAppModel model) {
    return BaseAppView(model);
  }

  @override
  BaseAppViewModel initViewModel(BaseAppView view) {
    return BaseAppViewModel(view);
  }

  void updateAppConfig(BaseAppConfig appConfig) {
    model.appConfig = appConfig;
  }
}
