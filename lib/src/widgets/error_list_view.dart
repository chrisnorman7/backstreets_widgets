import 'package:flutter/material.dart';

import '../../util.dart';
import 'copy_list_tile.dart';

/// A widget to show an [error], and optional [stackTrace].
class ErrorListView extends StatelessWidget {
  /// Create an instance.
  const ErrorListView({
    required this.error,
    this.stackTrace,
    this.textStyle,
    super.key,
  });

  /// Create an instance quickly from Riverpod's `ref.watch` method.
  const ErrorListView.withPositional(
    this.error,
    this.stackTrace, {
    this.textStyle,
    super.key,
  });

  /// The error to show.
  ///
  /// This object will be displayed as the first item in the resulting
  /// [ListView].
  final Object error;

  /// The stack trace to show.
  ///
  /// If this value is `null`, only the [error] will be shown, and as such the
  /// resulting [ListView] will only have one item.
  final StackTrace? stackTrace;

  /// The text style to use.
  final TextStyle? textStyle;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final s = stackTrace;
    return ListView(
      children: [
        CopyListTile(
          autofocus: true,
          title: 'Error Description',
          subtitle: error.toString(),
          textStyle: textStyle,
        ),
        if (s != null)
          ...s.toString().split('\n').map(
                (final e) => ListTile(
                  title: Text(
                    e,
                    style: textStyle,
                  ),
                  onTap: () => setClipboardText(e),
                ),
              ),
      ],
    );
  }
}
