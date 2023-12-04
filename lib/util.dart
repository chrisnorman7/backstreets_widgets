import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Round the given [value] to the given number of decimal [places].
///
/// This code copied and modified from[here](https://www.bezkoder.com/dart-round-double/#:~:text=Dart%20round%20double%20to%20N%20decimal%20places,-We%20have%202&text=%E2%80%93%20Multiply%20the%20number%20by%2010,12.3412%20*%2010%5E2%20%3D%201234.12).
double roundDouble(final double value, {final int places = 2}) {
  final mod = pow(10.0, places);
  return (value * mod).round().toDouble() / mod;
}

/// Push the result of the given [builder] onto the stack.
Future<void> pushWidget({
  required final BuildContext context,
  required final WidgetBuilder builder,
}) =>
    Navigator.of(context).push<void>(
      MaterialPageRoute(
        builder: builder,
      ),
    );

/// Confirm something.
Future<void> confirm({
  required final BuildContext context,
  final String title = 'Confirm',
  final String message = 'Are you sure?',
  final VoidCallback? yesCallback,
  final VoidCallback? noCallback,
  final String yesLabel = 'Yes',
  final String noLabel = 'No',
}) =>
    showDialog<void>(
      context: context,
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
  required final BuildContext context,
  required final String message,
  final String title = 'Error',
}) =>
    showDialog<void>(
      context: context,
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

/// Copy the given [text] to the [Clipboard].
void setClipboardText(final String text) {
  final data = ClipboardData(text: text);
  Clipboard.setData(data);
}

/// Return a quoted version of [string].
String getQuotedString(final String string) {
  if (string.contains("'")) {
    return jsonEncode(string);
  }
  final result = string.replaceAll('"', '"');
  return "'$result'";
}

/// A mixin to add a [pushBuilder] method.
mixin PushBuilderMixin<T extends StatefulWidget> on State<T> {
  /// Push a widget with the given [builder].
  Future<void> pushBuilder({
    required final BuildContext context,
    required final WidgetBuilder builder,
  }) async {
    await pushWidget(
      context: context,
      builder: builder,
    );
    setState(() {});
  }
}
