import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'splash_screen_model.dart';
import 'splash_screen_view.dart';

class SplashScreenViewModel
    extends BaseViewModel<SplashScreenModel, SplashScreenView> {
  SplashScreenViewModel(SplashScreenView view) : super(view);

  @override
  void init() {
    super.init();
    model.click.addCallback(clickButton);
  }

  void clickButton() {
    _launchURL();
  }

  _launchURL() async {
    const url = 'https://dipdev.studio';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void viewCreated() {}

  @override
  void viewRefresh() {}

  @override
  void initState() {}

  @override
  void viewDisposed() {}

  @override
  void viewResumed() {}

  @override
  void viewInactive() {}

  @override
  void viewPaused() {}

  @override
  void viewSuspending() {}
}
