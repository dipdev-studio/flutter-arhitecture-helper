
import 'package:example/splash/splash_screen_model.dart';
import 'package:example/splash/splash_screen_view.dart';
import 'package:example/splash/splash_screen_view_model.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/base_screen.dart';

class SplashScreen extends BaseScreen<SplashScreenModel, SplashScreenView,
    SplashScreenViewModel> {
  SplashScreen() : super(new SplashScreenModel());

  @override
  SplashScreenView initView(SplashScreenModel model) {
    return SplashScreenView(model);
  }

  @override
  SplashScreenViewModel initViewModel(SplashScreenView view) {
    return SplashScreenViewModel(view);
  }
}
