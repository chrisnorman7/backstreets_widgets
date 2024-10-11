import 'package:flutter/material.dart';

import '../../extensions.dart';

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
  Widget build(final BuildContext context) => ListTile(
        autofocus: autofocus,
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
