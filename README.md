# App Mobile Piscilago Flutter

## Architecture

Clean architecture Package-based with a feature-first approach.

Flutter version: 3.24.0
Dart version: 3.5.0

## File structure:

```
|-- lib/
| |-- di/
| |-- app/
| | |-- router/
| | |-- view/
| |-- feature_1/
| | |-- widgets/
| | |-- view/
| | |-- bloc/
| |-- feature_2/
| |-- feature_x/
| |-- bootstrap.dart
| |-- main_development.dart
| |-- main_production.dart

|-- packages/
| |-- core/
| | |-- ba_api_client/
| | |-- ba_ui/
| | |-- ba_utils/
| |-- ba_post/
| | |-- ba_post_datasource/
| | |-- ba_post_domain/

|-- melos.yaml
|--
```

## Current Resources

- routing: [auto_route](https://pub.dev/packages/auto_route)
- match objects: [equatable](https://pub.dev/packages/equatable)
- state management: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- package manager: [melos](https://pub.dev/packages/melos)
- code analyzer: [very_good_analysis](https://pub.dev/packages/very_good_analysis)

## [Auto_route](https://pub.dev/packages/auto_route)

auto_route is useful to autogenerate routes using the following command:

dart run build_runner build --delete-conflicting-outputs

## [Melos](https://pub.dev/packages/melos)

melos is useful to run scripts for all packages, some of these scripts are described in the melos.yaml file.
steps to use:

1. enable melos global:

   dart pub global activate melos

2. run configured scripts

   melos run analyze # this one runs "dart analyze ."

   melos bootstrap # this one runs "flutter pub get"

   melos clean # this one runs "flutter clean"

   melos test:selective_unit_test: # this one runs "flutter test"

   melos build_runner # Run build_runner for all packages that have this dependency

```

```
