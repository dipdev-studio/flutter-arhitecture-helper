import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_model_utils.dart';

abstract class BaseViewModel<M extends BaseModel,
    V extends BaseView<M>> extends BaseViewModelUtils<M, V> {
  BaseViewModel(V _view) : super(_view);
}