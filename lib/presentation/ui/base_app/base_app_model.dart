import 'package:flutter/widgets.dart';

import '../mvvm/stateless/base_model.dart';
import 'base_app_config.dart';

class BaseAppModel extends BaseModel {
  BaseAppConfig appConfig;
  List<Function(BuildContext context)> functionsWithContext = [];

  BaseAppModel(this.appConfig);
}
