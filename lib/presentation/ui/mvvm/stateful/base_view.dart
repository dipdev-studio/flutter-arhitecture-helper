import 'package:flutter/material.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/utils/base_view_utils.dart';

abstract class BaseView<M extends BaseModel> extends State<StatefulWidget>
    with BaseViewUtils<M> {
  BaseView(M _model) {
    init(_model, this.context);
  }



  

  @override
  Widget build(BuildContext context) {
    setContext(context);
    var view = getView().build(context);
    model?.viewCallbacks?.viewCreatedAction();
    return view;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => model?.viewCallbacks?.viewInitStateAction());
  }

  BaseView<M> getView();
}
