import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Useful methods for build contexts.
extension BuildContextX on BuildContext {
  /// Push a widget [builder].
  Future<void> pushWidgetBuilder(final WidgetBuilder builder) =>
      Navigator.of(this).push<void>(
        MaterialPageRoute(
          builder: builder,
        ),
      );

  /// Confirm something.
  Future<void> confirm({
    final String title = 'Confirm',
    final String message = 'Are you sure?',
    final VoidCallback? yesCallback,
    final VoidCallback? noCallback,
    final String yesLabel = 'Yes',
    final String noLabel = 'No',
  }) =>
      showDialog<void>(
        context: this,
        builder: (final context) => AlertDialog(
          title: Text(title),
          content: Focus(
            autofocus: true,
            child: Text(message),
          ),
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

  /// Show a message with an OK button.
  Future<void> showMessage({
    required final String message,
    final String title = 'Error',
  }) =>
      showDialog<void>(
        context: this,
        builder: (final context) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
          title: Text(title),
          content: CallbackShortcuts(
            bindings: {
              const SingleActivator(LogicalKeyboardKey.enter): () =>
                  Navigator.pop(context),
            },
            child: Focus(
              autofocus: true,
              child: Text(message),
            ),
          ),
        ),
      );
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
