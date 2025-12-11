import 'dart:math';

import 'package:backstreets_widgets/src/widgets/data_scope.dart';
import 'package:backstreets_widgets/src/widgets/tasks/random_tasks/random_tasks.dart'
    show RandomTasks;
import 'package:backstreets_widgets/src/widgets/tasks/ticking/ticking.dart';
import 'package:backstreets_widgets/widgets.dart' show RandomTasks;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

/// Useful methods for build contexts.
extension BuildContextX on BuildContext {
  /// Push a widget [builder].
  Future<void> pushWidgetBuilder(final WidgetBuilder builder) =>
      Navigator.of(this).push<void>(MaterialPageRoute(builder: builder));

  /// Confirm something.
  @Deprecated(
    // ignore: lines_longer_than_80_chars
    'This method does not pop its own context, and will be replaced by `shorConfirmMessage` in the near future.',
  )
  Future<void> confirm({
    final String title = 'Confirm',
    final String message = 'Are you sure?',
    final VoidCallback? yesCallback,
    final VoidCallback? noCallback,
    final String yesLabel = 'Yes',
    final String noLabel = 'No',
  }) => showDialog<void>(
    context: this,
    builder: (final context) => AlertDialog(
      title: Text(title),
      content: Focus(autofocus: true, child: Text(message)),
      actions: [
        ElevatedButton(
          onPressed: yesCallback ?? () => Navigator.pop(context),
          child: Text(yesLabel),
        ),
        ElevatedButton(
          onPressed: noCallback ?? () => Navigator.pop(context),
          child: Text(noLabel),
        ),
      ],
    ),
  );

  /// Pop `this` [BuildContext] from the [Navigator].
  void pop() => Navigator.pop(this);

  /// Maybe pop `this` [BuildContext] from the [Navigator].
  Future<bool> maybePop() => Navigator.maybePop(this);

  /// Show a confirm [message].
  Future<void> showConfirmMessage({
    final String title = 'Confirm',
    final String message = 'Are you sure?',
    final VoidCallback? yesCallback,
    final VoidCallback? noCallback,
    final String yesLabel = 'Yes',
    final String noLabel = 'No',
  }) => showDialog<void>(
    context: this,
    builder: (final innerContext) => AlertDialog(
      title: Text(title),
      content: Focus(autofocus: true, child: Text(message)),
      actions: [
        ElevatedButton(
          onPressed: () {
            innerContext.pop();
            yesCallback?.call();
          },
          child: Text(yesLabel),
        ),
        ElevatedButton(
          onPressed: () {
            innerContext.pop();
            noCallback?.call();
          },
          child: Text(noLabel),
        ),
      ],
    ),
  );

  /// Show a message with an OK button.
  Future<void> showMessage({
    required final String message,
    final String title = 'Error',
    final String buttonLabel = 'OK',
  }) => showDialog(
    context: this,
    builder: (final innerContext) => AlertDialog(
      actions: [
        TextButton(onPressed: innerContext.pop, child: Text(buttonLabel)),
      ],
      title: Text(title),
      content: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.enter): innerContext.pop,
        },
        child: Focus(autofocus: true, child: Text(message)),
      ),
      semanticLabel: message,
    ),
  );

  /// Get the loaded data from a [DataScope].
  ///
  /// If the data hasn't been loaded, then [StateError] will be thrown.
  T getLoadedData<T>() {
    final state = DataScope.of<T>(this);
    if (state.dataLoaded) {
      return state.data;
    }
    throw StateError('The data has not yet been loaded.');
  }

  /// Announce something to screen readers.
  ///
  /// This method uses the [SemanticsService.sendAnnouncement] method.
  Future<void> announce(
    final String message, {
    final TextDirection textDirection = TextDirection.ltr,
    final Assertiveness assertiveness = Assertiveness.polite,
  }) => SemanticsService.sendAnnouncement(
    View.of(this),
    message,
    textDirection,
    assertiveness: assertiveness,
  );

  /// Pause and resume a [Ticking] while pushing a widget [builder].
  ///
  /// This method is useful when implementing a pause menu for example.
  Future<void> pauseTickingBuilderAndPushWidget(
    final WidgetBuilder builder,
  ) async {
    Ticking.maybeOf(this)?.pause();
    await Navigator.of(this).push(MaterialPageRoute<void>(builder: builder));
    Ticking.maybeOf(this)?.resume();
  }

  /// Pause and resume a [RandomTasks] while pushing a widget [builder].
  ///
  /// This method is useful when implementing a pause menu for example.
  Future<void> pauseRandomTaskBuilderAndPushWidget(
    final WidgetBuilder builder,
  ) async {
    RandomTasks.maybeOf(this)?.pause();
    await Navigator.of(this).push(MaterialPageRoute<void>(builder: builder));
    RandomTasks.maybeOf(this)?.resume();
  }
}

/// Useful extension methods for doubles.
extension DoubleX on double {
  /// Round to the given number of decimal [places].
  ///
  /// This code copied and modified from[here](https://www.bezkoder.com/dart-round-double/#:~:text=Dart%20round%20double%20to%20N%20decimal%20places,-We%20have%202&text=%E2%80%93%20Multiply%20the%20number%20by%2010,12.3412%20*%2010%5E2%20%3D%201234.12).
  double roundDouble({final int places = 2}) {
    final mod = pow(10.0, places);
    return (this * mod).round().toDouble() / mod;
  }
}

/// Useful extension methods on strings.
extension StringX on String {
  /// Copy this string to the [Clipboard].
  void copyToClipboard() {
    final data = ClipboardData(text: this);
    Clipboard.setData(data);
  }
}

/// Useful extensions on menu controllers.
extension MenuControllerX on MenuController {
  /// Toggle the [isOpen] state of this [MenuController].
  void toggle() {
    if (isOpen) {
      close();
    } else {
      open();
    }
  }
}
