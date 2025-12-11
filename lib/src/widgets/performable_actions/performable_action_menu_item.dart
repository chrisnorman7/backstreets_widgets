import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A [MenuItemButton] which represents an [action].
class PerformableActionMenuItem extends StatelessWidget {
  /// Create an instance.
  const PerformableActionMenuItem({
    required this.action,
    this.autofocus = false,
    this.canCloseMenu = true,
    super.key,
  });

  /// The action to use.
  final PerformableAction action;

  /// Whether the [MenuItemButton] should be autofocused.
  final bool autofocus;

  /// Whether this [PerformableActionMenuItem] can close the [MenuController]
  /// with the [LogicalKeyboardKey.escape] key.
  final bool canCloseMenu;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final invoke = action.invoke;
    final activator = action.activator;
    final selected = action.checked;
    final controller = MenuController.maybeOf(context);
    return CallbackShortcuts(
      bindings: {
        if (canCloseMenu)
          const SingleActivator(LogicalKeyboardKey.escape): () {
            if (controller != null && controller.isOpen) {
              controller.close();
            }
          },
      },
      child: Semantics(
        checked: selected,
        selected: action.checked,
        child: MenuItemButton(
          autofocus: autofocus,
          onPressed: () {
            controller?.close();
            invoke?.call();
          },
          shortcut: activator,
          trailingIcon: selected == null
              ? null
              : SelectedIcon(selected: selected),
          child: Text(action.name),
        ),
      ),
    );
  }
}
