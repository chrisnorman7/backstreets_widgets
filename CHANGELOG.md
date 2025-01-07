# Changelog

## [0.30.0]

- make activators optional for `PerformableAction`s.

## [0.29.2]

- Fixed type arguments for `SimpleFutureBuilder`.

## [0.29.1]

- Test GitHub workflow.

## [0.29.0]

- Allow `PerformableActionsListTile` instances to be long pressed.
- Add more menus and semantic actions to various `ListTile` widgets.
- Try and make member names more consistent.

## [0.28.0]

- Added the `ErrorWidgetCallback` typedef.

## [0.27.1]

- Fixed a bug with `SimpleFutureBuilder`.

## [0.27.0]

- Fixed a couple of bugs in `SimpleFutureBuilder`.
- Copied extension methods from [flutter_audio_games](https://pub.dev/packages/flutter_audio_games).
- Added the `EnumListTile` widget.

## [0.26.0]

- Added the `EnsureSemantics` widget.

## [0.25.0]

- Added the `GameShortcut.withControlKey` constructor.
- Added meta shortcuts to `GameShortcut`s.

## [0.24.1]

- Fixed the `Cancel` widget.

## [0.24.0]

- Updated code.
- Added the `CrossPlatformSingleActivator` class.
- Added the `PerformableActionsBuilder`, `PerformableActions`, and `PerformableActionsListTile` widgets.

## [0.23.1]

- Fixed a bug in `EditDurationScreen` which meant milliseconds could not be altered in durations.

## [0.23.0]

- Added the `NextButton` widget.
- Added the `NewButton` widget.
- Added the `SaveButton` widget.
- Added the `DurationListTile` widget.
- Added the `EditDurationScreen` screen.
- Added the `BuildContext.announce` extension method.

## [0.22.1]

- Use the `defaultTargetPlatform` property to determine whether keyboard shortcuts should be Apple style or not
- Make `CentreText` centre the text vertically too.

## [0.22.0]

- Added the `DataScope` widget.
- Updated the `BuildContext.showMessage` extension method to make it more customizable.
- Added the `BuildContext.getLoadedData` extension method.

## [0.21.0]

- Added the `TimedCommands.unregisterCommand` method.

## [0.20.0]

- Removed all the text style arguments now that I found `DefaultTextStyle`.

## [0.19.0]

- Added the `TouchSurfaceBuilder` widget.
- Moved all utility functions to extension methods.

## [0.18.0]

- Added the `TimedCommands` widget.

## [0.17.0]

- Hopefully fixed `SimpleFutureBuilder`.
- Fixed focus problems with `TabbedScaffold`s.

## [0.16.1]

- Catch errors with `SimpleFutureBuilder` again.

## [0.16.0]

- Improved the `SimpleFutureBuilder` widget.

## [0.15.0]

- Added the `ListViewBuilder` widget.
- Fixed an autofocus issue with the `GameShortcutsHelpScreen`.

## [0.14.3]

- Stop stealing focus with the `GameShortcuts` widget in the `TabbedScaffold` widget.

## [0.14.2]

- Add the control key to tabbed scaffolds page-switching keys.

## [0.14.1]

- Fixed some bugs with tabbed scaffolds.

## [0.14.0]

- Updated a lot of code.
- Simplified shortcuts.
- Allow styling all widgets.
- Allow styling the `CenterText` widget.

## [0.13.0]

- Added missing exports.

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
