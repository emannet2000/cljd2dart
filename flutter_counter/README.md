# cljd_counter

A basic Flutter counter app whose `lib/main.dart` is generated from
ClojureDart by [`cljd2dart`](../README.md).

cljd2dart does not implement the ClojureDart Flutter DSL, and generated calls
do not support Dart named arguments. This example therefore puts the handful of
Flutter constructors it needs behind a tiny positional bridge,
[`lib/ui.dart`](lib/ui.dart), and writes the app logic and widget tree in
ClojureDart.

## Files

```
cljd/main.cljd     ClojureDart source (edit this)
lib/ui.dart        positional Flutter bridge (edit when adding widgets)
lib/main.dart      generated Dart, do not edit
generate.sh        regenerates lib/main.dart
test/widget_test.dart
```

## Run

```sh
./generate.sh          # cljd2dart cljd/main.cljd -o lib/main.dart
flutter run -d linux   # or another connected device
```

## Test and build

```sh
flutter test
flutter build linux
flutter build web
```

`web` builds, but the embedded cljd2dart runtime imports `dart:io` for its
`print`/`println` helpers. Avoid those helpers in browser builds; widget code
and atoms work normally.
