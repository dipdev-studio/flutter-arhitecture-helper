import 'package:flutter/widgets.dart';

import 'base_model.dart';
import 'base_view.dart';
import 'base_view_model.dart';

abstract class BaseScreen<M extends BaseModel, V extends BaseView<M>,
    VM extends BaseViewModel<M, V>> extends StatelessWidget {
  final M model;

  const BaseScreen(this.model, {Key key}) : super(key: key);

  BaseViewModel get viewModel => model.viewModel;
  BaseView get view => model.view;

  @override
  V build(BuildContext context) {
    V view = initView(model);
    VM viewModel = initViewModel(view);

    model.view = view;
    model.viewModel = viewModel;

    return viewModel.view;
  }

  V initView(M model);
  VM initViewModel(V view);


  void addFunctionWithRunOnContext(Function(BuildContext context) fun) {
    model.functionsWithContext.add(fun);
  }
}
