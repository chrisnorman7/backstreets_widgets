import 'package:flutter/material.dart';

import '../widgets/loading_widget.dart';
import 'simple_scaffold.dart';

/// A widget that displays a loading screen.
class LoadingScreen extends StatelessWidget {
  /// Create an instance.
  const LoadingScreen({super.key});

  /// Build the widget.
  @override
  Widget build(final BuildContext context) =>
      const SimpleScaffold(title: 'Loading', body: LoadingWidget());
}
