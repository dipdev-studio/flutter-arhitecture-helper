import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_arhitecture_helper/presentation/ui/mvvm/stateless/base_view.dart';
import 'base_app_model.dart';

class BaseAppView extends BaseView<BaseAppModel> {
  BaseAppView(BaseAppModel model) : super(model);

  @override
  Widget getView(BuildContext context) {
    for (var fun in model.functionsWithContext) {
      fun(context);
    }
    return getAppWidget();
  }

  Widget getAppWidget() {
    if (model.appConfig.isMaterial) {
      return MaterialApp(
          key: model.appConfig.key,
          navigatorKey: model.appConfig.navigatorKey,
          home: model.appConfig.home,
          routes: model.appConfig.routes,
          initialRoute: model.appConfig.initialRoute,
          onGenerateRoute: model.appConfig.onGenerateRoute,
          onUnknownRoute: model.appConfig.onUnknownRoute,
          navigatorObservers: model.appConfig.navigatorObservers,
          builder: model.appConfig.builder,
          title: model.appConfig.title,
          onGenerateTitle: model.appConfig.onGenerateTitle,
          color: model.appConfig.color,
          theme: model.appConfig.theme,
          darkTheme: model.appConfig.darkTheme,
          locale: model.appConfig.locale,
          localizationsDelegates: model.appConfig.localizationsDelegates,
          localeListResolutionCallback:
              model.appConfig.localeListResolutionCallback,
          localeResolutionCallback: model.appConfig.localeResolutionCallback,
          supportedLocales: model.appConfig.supportedLocales,
          debugShowMaterialGrid: model.appConfig.debugShowMaterialGrid,
          showPerformanceOverlay: model.appConfig.showPerformanceOverlay,
          checkerboardRasterCacheImages:
              model.appConfig.checkerboardRasterCacheImages,
          checkerboardOffscreenLayers:
              model.appConfig.checkerboardOffscreenLayers,
          showSemanticsDebugger: model.appConfig.showSemanticsDebugger,
          debugShowCheckedModeBanner:
              model.appConfig.debugShowCheckedModeBanner);
    } else {
      return WidgetsApp(
        key: key,
        navigatorKey: model.appConfig.navigatorKey,
        onGenerateRoute: model.appConfig.onGenerateRoute,
        onUnknownRoute: model.appConfig.onUnknownRoute,
        navigatorObservers: model.appConfig.navigatorObservers,
        initialRoute: model.appConfig.initialRoute,
        pageRouteBuilder: model.appConfig.pageRouteBuilder,
        home: model.appConfig.home,
        routes: model.appConfig.routes,
        builder: model.appConfig.builder,
        title: model.appConfig.title,
        onGenerateTitle: model.appConfig.onGenerateTitle,
        textStyle: model.appConfig.textStyle,
        color: model.appConfig.color,
        locale: model.appConfig.locale,
        localizationsDelegates: model.appConfig.localizationsDelegates,
        localeListResolutionCallback:
            model.appConfig.localeListResolutionCallback,
        localeResolutionCallback: model.appConfig.localeResolutionCallback,
        supportedLocales: model.appConfig.supportedLocales,
        showPerformanceOverlay: model.appConfig.showPerformanceOverlay,
        checkerboardRasterCacheImages:
            model.appConfig.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers:
            model.appConfig.checkerboardOffscreenLayers,
        showSemanticsDebugger: model.appConfig.showSemanticsDebugger,
        debugShowWidgetInspector: model.appConfig.debugShowWidgetInspector,
        debugShowCheckedModeBanner: model.appConfig.debugShowCheckedModeBanner,
        inspectorSelectButtonBuilder:
            model.appConfig.inspectorSelectButtonBuilder,
      );
    }
  }
}
