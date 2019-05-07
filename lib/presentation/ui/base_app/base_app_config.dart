import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// The class responsible for creating the application.
class BaseAppConfig {
  bool isMaterial;
  Key key;
  GlobalKey<NavigatorState> navigatorKey;
  RouteFactory onGenerateRoute;
  RouteFactory onUnknownRoute;
  List<NavigatorObserver> navigatorObservers;
  String initialRoute;
  PageRouteFactory pageRouteBuilder;
  Widget home;
  Map<String, WidgetBuilder> routes;
  TransitionBuilder builder;
  String title;
  GenerateAppTitle onGenerateTitle;
  TextStyle textStyle;
  Color color;
  ThemeData theme;
  ThemeData darkTheme;
  Locale locale;
  Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates;
  LocaleListResolutionCallback localeListResolutionCallback;
  LocaleResolutionCallback localeResolutionCallback;
  Iterable<Locale> supportedLocales;
  bool debugShowMaterialGrid;
  bool showPerformanceOverlay;
  bool checkerboardRasterCacheImages;
  bool checkerboardOffscreenLayers;
  bool showSemanticsDebugger;
  bool debugShowWidgetInspector;
  bool debugShowCheckedModeBanner;
  InspectorSelectButtonBuilder inspectorSelectButtonBuilder;

  BaseAppConfig({
    @required bool isMaterial = true,
    Key key,
    GlobalKey<NavigatorState> navigatorKey,
    Widget home,
    Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
    String initialRoute,
    RouteFactory onGenerateRoute,
    RouteFactory onUnknownRoute,
    List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    TransitionBuilder builder,
    String title = '',
    GenerateAppTitle onGenerateTitle,
    @required Color color,
    ThemeData theme,
    ThemeData darkTheme,
    Locale locale,
    Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
    LocaleListResolutionCallback localeListResolutionCallback,
    LocaleResolutionCallback localeResolutionCallback,
    Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    bool debugShowMaterialGrid = false,
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = false,
  })  : assert(isMaterial != null),
        assert(routes != null),
        assert(navigatorObservers != null),
        assert(title != null),
        assert(debugShowMaterialGrid != null),
        assert(showPerformanceOverlay != null),
        assert(checkerboardRasterCacheImages != null),
        assert(checkerboardOffscreenLayers != null),
        assert(showSemanticsDebugger != null),
        assert(debugShowCheckedModeBanner != null) {
    this.isMaterial = isMaterial;
    this.key = key;
    this.navigatorKey = navigatorKey;
    this.onGenerateRoute = onGenerateRoute;
    this.onUnknownRoute = onUnknownRoute;
    this.navigatorObservers = navigatorObservers;
    this.initialRoute = initialRoute;
    this.pageRouteBuilder = pageRouteBuilder;
    this.home = home;
    this.routes = routes;
    this.builder = builder;
    this.title = title;
    this.onGenerateTitle = onGenerateTitle;
    this.textStyle = textStyle;
    this.color = color;
    this.theme = theme;
    this.darkTheme = darkTheme;
    this.locale = locale;
    this.localizationsDelegates = localizationsDelegates;
    this.localeListResolutionCallback = localeListResolutionCallback;
    this.localeResolutionCallback = localeResolutionCallback;
    this.supportedLocales = supportedLocales;
    this.debugShowMaterialGrid = debugShowMaterialGrid;
    this.showPerformanceOverlay = showPerformanceOverlay;
    this.checkerboardRasterCacheImages = checkerboardRasterCacheImages;
    this.checkerboardOffscreenLayers = checkerboardOffscreenLayers;
    this.showSemanticsDebugger = showSemanticsDebugger;
    this.debugShowWidgetInspector = debugShowWidgetInspector;
    this.debugShowCheckedModeBanner = debugShowCheckedModeBanner;
    this.inspectorSelectButtonBuilder = inspectorSelectButtonBuilder;
  }
}
