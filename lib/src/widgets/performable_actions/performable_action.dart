import 'package:flutter/material.dart';

/// An action which can be performed.
class PerformableAction {
  /// Create an instance.
  const PerformableAction({
    required this.name,
    this.invoke,
    this.activator,
    this.checked,
    this.closeMenu,
  });

  /// The name of this action.
  final String name;

  /// The key to use to perform this action.
  final SingleActivator? activator;

  /// The function to call when this action is performed.
  final VoidCallback? invoke;

  /// Whether the resulting menu item should be selected.
  ///
  /// If [checked] is `null`, then no trailing widget will be generated.
  final bool? checked;

  /// Whether to close the menu when this item is activated from the menu.
  ///
  /// If [closeMenu] is `null`, it defaults to `checked != null`.
  final bool? closeMenu;
}
