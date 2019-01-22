import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view_model.dart';

abstract class BaseScreen<M extends BaseModel, V extends BaseView<M>,
    VM extends BaseViewModel<M, V>> extends StatefulWidget {
  VM _viewModel;
  M _model;
  V _view;

  M get model => _model;
  VM get viewModel => _viewModel;
  V get view => _view;

  BaseScreen() {
    _model = initModel();
    _view = initView(_model);
    _viewModel = initViewModel(_view);
  }

  @override
  V createState() {
    return _viewModel.view;
  }

  M initModel();
  V initView(M model);
  VM initViewModel(V view);
}
