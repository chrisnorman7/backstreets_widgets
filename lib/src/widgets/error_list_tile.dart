import 'package:flutter/material.dart';

import '../../extensions.dart';
import '../../shortcuts.dart';
import '../../widgets.dart';

/// A [ListTile] which can show an error.
class ErrorListTile extends StatelessWidget {
  /// Create an instance.
  const ErrorListTile({
    required this.error,
    required this.stackTrace,
    this.autofocus = false,
    super.key,
  });

  /// Create an instance quickly from Riverpod's `ref.watch` method.
  const ErrorListTile.withPositional(
    this.error,
    this.stackTrace, {
    this.autofocus = false,
    super.key,
  });

  /// The error to show.
  final Object error;

  /// The stack trace to show.
  final StackTrace? stackTrace;

  /// Whether the [ListTile] should be autofocused.
  final bool autofocus;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final s = stackTrace;
    return PerformableActionsListTile(
      autofocus: autofocus,
      actions: [
        PerformableAction(
          name: 'Copy error',
          activator: copyShortcut,
          invoke: error.toString().copyToClipboard,
        ),
        if (s != null)
          PerformableAction(
            name: 'Copy stack trace',
            activator: copyOtherShortcut,
            invoke: s.toString().copyToClipboard,
          ),
      ],
      title: Text(error.toString()),
      subtitle: Text(stackTrace.toString()),
      onTap: () {
        final buffer = StringBuffer()
          ..writeln(error)
          ..writeln(stackTrace);
        buffer.toString().copyToClipboard();
      },
    );
  }
}
