import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_view_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_model_utils.dart';

class BaseModel extends BaseModelUtils {
  BaseViewModel viewModel;
  BaseView view;
  BuildContext context;
}
