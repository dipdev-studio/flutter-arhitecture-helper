import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view_model.dart';

abstract class BaseScreen<M extends BaseModel, V extends BaseView<M>,
    VM extends BaseViewModel<M, V>> extends StatefulWidget {
  /* M get model => ;
  VM get viewModel => _viewModel;
  V get view => _view; */

  @override
  V createState() {
    M _model = initModel();
    V _view = initView(_model);
    VM _viewModel = initViewModel(_view);

    return _viewModel.view;
  }

  M initModel();
  V initView(M model);
  VM initViewModel(V view);
}
