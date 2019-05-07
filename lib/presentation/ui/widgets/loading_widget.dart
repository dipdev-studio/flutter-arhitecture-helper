import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingWidget extends StatefulWidget {
  static const colorBgDefault = Color(0x99000000);
  final Color colorBg;
  final bool showing;

  LoadingWidget({Key key, this.colorBg = colorBgDefault, this.showing = false})
      : super(key: key);

  @override
  _LoadingWidgetState createState() => new _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.showing) {
      return new Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: widget.colorBg,
          child: new Center(child: new CircularProgressIndicator()));
    } else {
      return new Container(width: 0.0, height: 0.0);
    }
  }
}
