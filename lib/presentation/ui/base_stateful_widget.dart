import 'package:flutter/widgets.dart';

import 'base_widget.dart';
import 'mvvm/base_model.dart';
import 'mvvm/base_view.dart';
import 'mvvm/base_view_model.dart';

abstract class BaseStatefulWidgett<M extends BaseModel, V extends BaseView<M>,
    VM extends BaseViewModel<M, V>> extends BaseWidget {
  const BaseStatefulWidgett(VM viewModel, {Key key}) : super(viewModel);

  @override
  State createState();
}
