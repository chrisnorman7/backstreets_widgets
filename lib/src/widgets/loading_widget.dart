import 'package:flutter/material.dart';

/// The loading screen.
class LoadingWidget extends StatelessWidget {
  /// Create an instance.
  const LoadingWidget({super.key});

  /// Build the widget.
  @override
  Widget build(final BuildContext context) =>
      const CircularProgressIndicator(semanticsLabel: 'Loading...');
}
