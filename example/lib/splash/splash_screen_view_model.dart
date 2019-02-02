import 'package:example/splash/splash_screen_model.dart';
import 'package:example/splash/splash_screen_view.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/base_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

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
}
