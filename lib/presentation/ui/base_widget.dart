import 'package:flutter/widgets.dart';

import 'mvvm/base_model.dart';
import 'mvvm/base_view.dart';
import 'mvvm/base_view_model.dart';

abstract class BaseWidget<M extends BaseModel, V extends BaseView<M>,
    VM extends BaseViewModel<M, V>> extends Widget {
 
  final Key key;
  final VM viewModel;

  const BaseWidget(this.viewModel, {this.key});

  @protected
  @override
  Element createElement();
}
