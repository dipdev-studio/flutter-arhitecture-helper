# flutter_arhitecture_helper

Architecture helper package

Designed for a quick start when developing applications. Allows you to simplify the creation of Clear Architecture and facilitate the basic tasks inherent in most applications.

This package helps not only to organize your code qualitatively, but also includes methods that facilitate a lot of tasks.

## Usage

To use this package, add `flutter_arhitecture_helper` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```yaml
dependencies:
  flutter_arhitecture_helper: ^0.4.3
```

### Example

#### Main function

```dart
var theme = new ThemeData(
  primarySwatch: Colors.blue,
);
var appCongig = new BaseAppConfig(
    isMaterial: true,
    title: 'DipDev Studio',
    theme: theme,
    color: theme.primaryColor,
    home: new SplashScreen());
var app = new BaseApp(appCongig);

void main() => runApp(app);
```

#### Navigate in View Model

```dart
view.navigateTo(model.context, new MainScreen(), true);
```

```dart
view.navigateBack(model.context);
```

#### Refresh UI from View Model

```dart
view.updateUI();
```

#### Events in View Model

```dart
@override
void init() {
  super.init();
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
```


### Authors

```
This project developed by DipDev Studio Team: @Dimoshka
```