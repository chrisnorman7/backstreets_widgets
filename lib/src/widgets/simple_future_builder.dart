import 'package:flutter/material.dart';

/// A simple version of a [FutureBuilder].
class SimpleFutureBuilder<T> extends StatelessWidget {
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
  final Widget Function(BuildContext context, T? value) done;

  /// The function to call to build the widget while [future] is being awaited.
  final WidgetBuilder loading;

  /// The function to call to build the widget if [future] completes with an
  /// error.
  final Widget Function(
    Object error,
    StackTrace? stackTrace,
  ) error;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => FutureBuilder(
        future: future,
        builder: (final innerContext, final snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return done(innerContext, snapshot.data);
          } else if (snapshot.hasError) {
            return error(snapshot.error!, snapshot.stackTrace);
          } else {
            return loading(innerContext);
          }
        },
      );
}
