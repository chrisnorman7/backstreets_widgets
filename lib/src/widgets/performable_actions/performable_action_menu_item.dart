import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A [MenuItemButton] which represents an [action].
class PerformableActionMenuItem extends StatelessWidget {
  /// Create an instance.
  const PerformableActionMenuItem({
    required this.action,
    this.autofocus = false,
    super.key,
  });

  /// The action to use.
  final PerformableAction action;

  /// Whether the [MenuItemButton] should be autofocused.
  final bool autofocus;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final invoke = action.invoke;
    final activator = action.activator;
    final selected = action.checked;
    return Semantics(
      checked: selected,
      selected: action.checked,
      child: MenuItemButton(
        autofocus: autofocus,
        onPressed: invoke,
        shortcut: activator,
        trailingIcon:
            selected == null ? null : SelectedIcon(selected: selected),
        child: Text(action.name),
      ),
    );
  }
}
