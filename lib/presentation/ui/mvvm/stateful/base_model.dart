import '../utils/base_model_utils.dart';
import 'base_view.dart';
import 'base_view_model.dart';

class BaseModel extends BaseModelUtils {
  BaseViewModel viewModel;
  BaseView view;
  bool loading = false;

  OnCallCommand loadingShow = new OnCallCommand();
  OnCallCommand loadingHide = new OnCallCommand();
}
