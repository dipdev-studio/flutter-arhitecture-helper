import 'package:fah/splash/splash_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateful/base_view.dart';

class SplashScreenView extends BaseView<SplashScreenModel> {
  SplashScreenView(SplashScreenModel model) : super(model);

  @override
  Widget getView(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/logo-developers.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  model.click.onCall();
                },
                child: Container(
                    margin: EdgeInsets.all(100),
                    height: 100,
                    width: 200,
                    alignment: Alignment(0, 0),
                    // margin: EdgeInsets.all(200),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        )
                      ],
                    ),
                    child: Text(
                      "Dip Dev Studio",
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
