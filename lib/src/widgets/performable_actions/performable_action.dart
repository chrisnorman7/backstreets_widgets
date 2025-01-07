import 'package:flutter/material.dart';

/// An action which can be performed.
class PerformableAction {
  /// Create an instance.
  const PerformableAction({
    required this.name,
    required this.invoke,
    this.activator,
  });

  /// The name of this action.
  final String name;

  /// The key to use to perform this action.
  final SingleActivator? activator;

  /// The function to call when this action is performed.
  final VoidCallback invoke;
}
