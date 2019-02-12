import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_view_model.dart';

abstract class BaseScreen<M extends BaseModel, V extends BaseView<M>,
    VM extends BaseViewModel<M, V>> extends StatefulWidget {
  final M model;

  const BaseScreen(this.model, {Key key}) : super(key: key);

  BaseViewModel get viewModel => model.viewModel;
  BaseView get view => model.view;

  @override
  V createState() {
    V view = initView(model);
    VM viewModel = initViewModel(view);

    model.view = view as BaseView;
    model.viewModel = viewModel as BaseViewModel;

    return viewModel.view;
  }

  V initView(M model);
  VM initViewModel(V view);
}