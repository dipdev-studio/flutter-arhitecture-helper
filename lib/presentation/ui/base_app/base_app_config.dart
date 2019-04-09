import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        assert(debugShowCheckedModeBanner != null),
        assert(
            home == null || !routes.containsKey(Navigator.defaultRouteName),
            'If the home property is specified, the routes table '
            'cannot include an entry for "/", since it would be redundant.'),
        assert(
            builder != null ||
                home != null ||
                routes.containsKey(Navigator.defaultRouteName) ||
                onGenerateRoute != null ||
                onUnknownRoute != null,
            'Either the home property must be specified, '
            'or the routes table must include an entry for "/", '
            'or there must be on onGenerateRoute callback specified, '
            'or there must be an onUnknownRoute callback specified, '
            'or the builder property must be specified, '
            'because otherwise there is nothing to fall back on if the '
            'app is started with an intent that specifies an unknown route.'),
        assert(
            (home != null ||
                    routes.isNotEmpty ||
                    onGenerateRoute != null ||
                    onUnknownRoute != null) ||
                (builder != null &&
                    navigatorKey == null &&
                    initialRoute == null &&
                    navigatorObservers.isEmpty),
            'If no route is provided using '
            'home, routes, onGenerateRoute, or onUnknownRoute, '
            'a non-null callback for the builder property must be provided, '
            'and the other navigator-related properties, '
            'navigatorKey, initialRoute, and navigatorObservers, '
            'must have their initial values '
            '(null, null, and the empty list, respectively).'),
        assert(
            builder != null ||
                onGenerateRoute != null ||
                pageRouteBuilder != null,
            'If neither builder nor onGenerateRoute are provided, the '
            'pageRouteBuilder must be specified so that the default handler '
            'will know what kind of PageRoute transition to build.'),
        assert(title != null),
        assert(color != null),
        assert(supportedLocales != null && supportedLocales.isNotEmpty),
        assert(debugShowWidgetInspector != null);
}
