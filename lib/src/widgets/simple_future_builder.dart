import 'package:flutter/material.dart';

/// A simple version of a [FutureBuilder].
class SimpleFutureBuilder<T> extends StatefulWidget {
  /// Create an instance.
  const SimpleFutureBuilder({
    required this.future,
    required this.done,
    required this.loading,
    required this.error,
    super.key,
  });

  /// The future to wait for.
  final Future<T> future;

  /// The function to call to build the widget when [future] has completed with
  /// no error.
  final Widget Function(BuildContext futureContext, T value) done;

  /// The function to call to build the widget while [future] is being awaited.
  final Widget Function() loading;

  /// The function to call to build the widget if [future] completes with an
  /// error.
  final Widget Function(
    Object error,
    StackTrace? stackTrace,
  ) error;

  /// Create state.
  @override
  State<SimpleFutureBuilder<T>> createState() => _SimpleFutureBuilderState<T>();
}

class _SimpleFutureBuilderState<T> extends State<SimpleFutureBuilder<T>> {
  /// The loaded value.
  late T _value;

  /// Whether `_value` has been loaded yet.
  late bool _isLoaded;

  /// Initialise state.
  @override
  void initState() {
    super.initState();
    _isLoaded = false;
    widget.future.then((final value) => setState(() => _value = value));
  }

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    if (_isLoaded) {
      return widget.done(context, _value);
    }
    return widget.loading();
  }
}
