import 'package:flutter/material.dart';

import '../widgets/error_list_view.dart';
import 'simple_scaffold.dart';

/// A widget that displays an [error], and an optional [stackTrace].
class ErrorScreen extends StatelessWidget {
  /// Create an instance.
  const ErrorScreen({
    required this.error,
    this.stackTrace,
    super.key,
  });

  /// The error to show.
  final Object error;

  /// The stack trace to show.
  ///
  /// If this value is `null`, only the [error] will be displayed.
  final StackTrace? stackTrace;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => SimpleScaffold(
        title: 'Error',
        body: ErrorListView(error: error, stackTrace: stackTrace),
      );
}
