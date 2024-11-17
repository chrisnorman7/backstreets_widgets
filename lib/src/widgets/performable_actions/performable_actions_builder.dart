import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'performable_action.dart';

/// A widget which allows [actions] to be performed.
class PerformableActionsBuilder extends StatelessWidget {
  /// Create an instance.
  const PerformableActionsBuilder({
    required this.actions,
    required this.builder,
    super.key,
  });

  /// The actions which can be performed.
  final List<PerformableAction> actions;

  /// The widget below this widget in the tree.
  final Widget Function(BuildContext builderContext, MenuController controller)
      builder;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Semantics(
        customSemanticsActions: {
          for (final action in actions)
            CustomSemanticsAction(label: action.name): action.invoke,
        },
        child: MenuAnchor(
          menuChildren: [
            for (var i = 0; i < actions.length; i++)
              MenuItemButton(
                autofocus: i == 0,
                onPressed: actions[i].invoke,
                shortcut: actions[i].activator,
                child: Text(actions[i].name),
              ),
          ],
          builder: (final builderContext, final controller, final __) =>
              CallbackShortcuts(
            bindings: {
              for (final action in actions) action.activator: action.invoke,
            },
            child: builder(builderContext, controller),
          ),
        ),
      );

  /// Toggle [controller] open or closed.
  void toggleController(final MenuController controller) {
    if (controller.isOpen) {
      controller.close();
    } else {
      controller.open();
    }
  }
}
