import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingWidget extends StatefulWidget {
  static const Color colorBgAndroidDefault = Color(0x99000000);
  static const Color colorBgIOSDefault = Colors.transparent;
  static const double containerHeightDefault = 70;
  static const double containerWidthDefault = 70;

  final Color colorBg;
  final double containerHeight;
  final double containerWidth;
  final bool showing;
  final OSTypes osType;

  LoadingWidget.android(
      {Key key, this.colorBg = colorBgAndroidDefault, this.showing = false})
      : osType = OSTypes.Android,
        this.containerHeight = containerHeightDefault,
        this.containerWidth = containerWidthDefault,
        super(key: key);

  LoadingWidget.iOS(
      {Key key,
      this.containerHeight = containerHeightDefault,
      this.containerWidth = containerWidthDefault,
      this.showing = false})
      : osType = OSTypes.iOS,
        this.colorBg = colorBgIOSDefault,
        super(key: key);

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
        child: new Center(
          child: widget.osType == OSTypes.Android
              ? new CircularProgressIndicator()
              : Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  color: Colors.transparent,
                  child: new Center(
                    child: new ClipRect(
                      child: new BackdropFilter(
                        filter:
                            new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: new Container(
                          height: 70,
                          width: 70,
                          decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200.withOpacity(0.5)),
                          child: Center(
                            child: new CupertinoActivityIndicator(
                              radius: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      );
    } else {
      return new Container(width: 0.0, height: 0.0);
    }
  }
}

enum OSTypes { Android, iOS }
