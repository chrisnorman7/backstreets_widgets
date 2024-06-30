# Changelog

## [0.12.0]

- Added some widgets from the [flutter_audio_games](https://pub.dev/packages/flutter_audio_games) package.
- Changed the signature of `SimpleFutureBuilder.loading` to bring it inline with Riverpod's `AsyncValue.when`.

## [0.11.0]

- Added the `PointListTile` widget.
- Added the `EditPointScreen` widget.

## [0.10.0]

- Added the `ErrorListTile` widget.

## [0.9.0]

- Added the `SimpleFutureBuilder` widget.
- Added the `pushWidget` extension method to the `BuildContext` class.
- Code cleanup.
- Fixed exports.

## [0.8.0]

- Added the `openCallback` argument to `CommonShortcuts`.`

## [0.7.0]

- Added the `CommonShortcuts` widget.
- Added more useful shortcuts.
- The `ErrorListView` widget now splits up stack traces into multiple list items.

## [0.6.0]

- Fixed the clear hotkey to be `escape`,.

## [0.5.0]

- Allow the search field in a [SearchableListView] to be cleared with the escape key.

## [0.4.0]

- Allow setting callback shortcuts for `SelectItem` and `SelectEnum` widgets.

## [0.3.0]

- Added the `fromPositional` constructor to both `ErrorListView` and `ErrorScreen` for tighter integration with Riverpod.

## [0.2.0]

- All `ListTile` widgets now accept a `onLongPress` argument.
- The `IntListTile` now uses the `PushWidgetListTile` widget, to bring it in line with the `DoubleListTile` widget.

## [0.1.0]

- Added some widgets and screens for use with Riverpod.

## [0.0.5]

- Add the `SelectItem.shouldPop` property.

## [0.0.4]

- `helpShortcut` is now an instance of `CharacterActivator`.

## [0.0.3]

- Use a `Widget` for `floatingActionButton`.

## [0.0.2]

- Library comments.

## [0.0.1]

- Initial release.
