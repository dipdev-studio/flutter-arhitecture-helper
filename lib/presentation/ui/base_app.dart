import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  final _AppConfig appConfig = _AppConfig();

  BaseApp.materialApp({
    Key key,
    GlobalKey<NavigatorState> navigatorKey,
    Widget home,
    Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
    String initialRoute,
    RouteFactory onGenerateRoute,
    RouteFactory onUnknownRoute,
    List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    TransitionBuilder builder,
    String title,
    GenerateAppTitle onGenerateTitle,
    Color color,
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
  })  : assert(routes != null),
        assert(navigatorObservers != null),
        assert(title != null),
        assert(debugShowMaterialGrid != null),
        assert(showPerformanceOverlay != null),
        assert(checkerboardRasterCacheImages != null),
        assert(checkerboardOffscreenLayers != null),
        assert(showSemanticsDebugger != null),
        assert(debugShowCheckedModeBanner != null),
        super(key: key) {
    appConfig.isMaterial = true;
    appConfig.key = key;
    appConfig.navigatorKey = navigatorKey;
    appConfig.home = home;
    appConfig.routes = routes;
    appConfig.initialRoute = initialRoute;
    appConfig.onGenerateRoute = onGenerateRoute;
    appConfig.onUnknownRoute = onUnknownRoute;
    appConfig.navigatorObservers = navigatorObservers;
    appConfig.builder = builder;
    appConfig.title = title;
    appConfig.onGenerateTitle = onGenerateTitle;
    appConfig.color = color;
    appConfig.theme = theme;
    appConfig.darkTheme = darkTheme;
    appConfig.locale = locale;
    appConfig.localizationsDelegates = localizationsDelegates;
    appConfig.localeListResolutionCallback = localeListResolutionCallback;
    appConfig.localeResolutionCallback = localeResolutionCallback;
    appConfig.supportedLocales = supportedLocales;
    appConfig.debugShowMaterialGrid = debugShowMaterialGrid;
    appConfig.showPerformanceOverlay = showPerformanceOverlay;
    appConfig.checkerboardRasterCacheImages = checkerboardRasterCacheImages;
    appConfig.checkerboardOffscreenLayers = checkerboardOffscreenLayers;
    appConfig.showSemanticsDebugger = showSemanticsDebugger;
    appConfig.debugShowCheckedModeBanner = debugShowCheckedModeBanner;
  }

  BaseApp.widgetsApp({
    Key key,
    GlobalKey<NavigatorState> navigatorKey,
    RouteFactory onGenerateRoute,
    RouteFactory onUnknownRoute,
    List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    String initialRoute,
    PageRouteFactory pageRouteBuilder,
    Widget home,
    Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
    TransitionBuilder builder,
    String title,
    GenerateAppTitle onGenerateTitle,
    TextStyle textStyle,
    @required Color color,
    Locale locale,
    Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
    LocaleListResolutionCallback localeListResolutionCallback,
    LocaleResolutionCallback localeResolutionCallback,
    Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowWidgetInspector = false,
    bool debugShowCheckedModeBanner = false,
    InspectorSelectButtonBuilder inspectorSelectButtonBuilder,
  })  : assert(navigatorObservers != null),
        assert(routes != null),
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
        assert(showPerformanceOverlay != null),
        assert(checkerboardRasterCacheImages != null),
        assert(checkerboardOffscreenLayers != null),
        assert(showSemanticsDebugger != null),
        assert(debugShowCheckedModeBanner != null),
        assert(debugShowWidgetInspector != null),
        super(key: key) {
    appConfig.isMaterial = false;
    appConfig.key = key;
    appConfig.navigatorKey = navigatorKey;
    appConfig.onGenerateRoute = onGenerateRoute;
    appConfig.onUnknownRoute = onUnknownRoute;
    appConfig.navigatorObservers = navigatorObservers;
    appConfig.initialRoute = initialRoute;
    //appConfig.pageRouteBuilder = pageRouteBuilder;
    appConfig.home = home;
    appConfig.routes = routes;
    appConfig.builder = builder;
    appConfig.title = title;
    appConfig.onGenerateTitle = onGenerateTitle;
    appConfig.textStyle = textStyle;
    appConfig.color = color;
    appConfig.locale = locale;
    appConfig.localizationsDelegates = localizationsDelegates;
    appConfig.localeListResolutionCallback = localeListResolutionCallback;
    appConfig.localeResolutionCallback = localeResolutionCallback;
    appConfig.supportedLocales = supportedLocales;
    appConfig.showPerformanceOverlay = showPerformanceOverlay;
    appConfig.checkerboardRasterCacheImages = checkerboardRasterCacheImages;
    appConfig.checkerboardOffscreenLayers = checkerboardOffscreenLayers;
    appConfig.showSemanticsDebugger = showSemanticsDebugger;
    appConfig.debugShowWidgetInspector = debugShowWidgetInspector;
    appConfig.debugShowCheckedModeBanner = debugShowCheckedModeBanner;
    appConfig.inspectorSelectButtonBuilder = inspectorSelectButtonBuilder;
  }

  @override
  Widget build(BuildContext context) {
    return getAppWidget();
  }

  Widget getAppWidget() {
    if (appConfig.isMaterial) {
      return MaterialApp(
          key: appConfig.key,
          navigatorKey: appConfig.navigatorKey,
          home: appConfig.home,
          routes: appConfig.routes,
          initialRoute: appConfig.initialRoute,
          onGenerateRoute: appConfig.onGenerateRoute,
          onUnknownRoute: appConfig.onUnknownRoute,
          navigatorObservers: appConfig.navigatorObservers,
          builder: appConfig.builder,
          title: appConfig.title,
          onGenerateTitle: appConfig.onGenerateTitle,
          color: appConfig.color,
          theme: appConfig.theme,
          darkTheme: appConfig.darkTheme,
          locale: appConfig.locale,
          localizationsDelegates: appConfig.localizationsDelegates,
          localeListResolutionCallback: appConfig.localeListResolutionCallback,
          localeResolutionCallback: appConfig.localeResolutionCallback,
          supportedLocales: appConfig.supportedLocales,
          debugShowMaterialGrid: appConfig.debugShowMaterialGrid,
          showPerformanceOverlay: appConfig.showPerformanceOverlay,
          checkerboardRasterCacheImages:
              appConfig.checkerboardRasterCacheImages,
          checkerboardOffscreenLayers: appConfig.checkerboardOffscreenLayers,
          showSemanticsDebugger: appConfig.showSemanticsDebugger,
          debugShowCheckedModeBanner: appConfig.debugShowCheckedModeBanner);
    } else {
      return WidgetsApp(
        key: key,
        navigatorKey: appConfig.navigatorKey,
        onGenerateRoute: appConfig.onGenerateRoute,
        onUnknownRoute: appConfig.onUnknownRoute,
        navigatorObservers: appConfig.navigatorObservers,
        initialRoute: appConfig.initialRoute,
        pageRouteBuilder: appConfig.pageRouteBuilder,
        home: appConfig.home,
        routes: appConfig.routes,
        builder: appConfig.builder,
        title: appConfig.title,
        onGenerateTitle: appConfig.onGenerateTitle,
        textStyle: appConfig.textStyle,
        color: appConfig.color,
        locale: appConfig.locale,
        localizationsDelegates: appConfig.localizationsDelegates,
        localeListResolutionCallback: appConfig.localeListResolutionCallback,
        localeResolutionCallback: appConfig.localeResolutionCallback,
        supportedLocales: appConfig.supportedLocales,
        showPerformanceOverlay: appConfig.showPerformanceOverlay,
        checkerboardRasterCacheImages: appConfig.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: appConfig.checkerboardOffscreenLayers,
        showSemanticsDebugger: appConfig.showSemanticsDebugger,
        debugShowWidgetInspector: appConfig.debugShowWidgetInspector,
        debugShowCheckedModeBanner: appConfig.debugShowCheckedModeBanner,
        inspectorSelectButtonBuilder: appConfig.inspectorSelectButtonBuilder,
      );
    }
  }
}

class _AppConfig {
  bool isMaterial = true;
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
}
