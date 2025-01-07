import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../selected_icon.dart';
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

  /// The function which will build the widget below this widget in the tree.
  final Widget Function(BuildContext builderContext, MenuController controller)
      builder;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final customSemanticActions = <CustomSemanticsAction, VoidCallback>{};
    final menuChildren = <Widget>[];
    final bindings = <ShortcutActivator, VoidCallback>{};
    for (var i = 0; i < actions.length; i++) {
      final action = actions[i];
      final invoke = action.invoke;
      customSemanticActions[CustomSemanticsAction(label: action.name)] = invoke;
      final activator = action.activator;
      final selected = action.checked;
      menuChildren.add(
        Semantics(
          checked: action.checked,
          selected: action.checked,
          child: MenuItemButton(
            autofocus: i == 0,
            onPressed: invoke,
            shortcut: activator,
            trailingIcon:
                selected == null ? null : SelectedIcon(selected: selected),
            child: Text(action.name),
          ),
        ),
      );
      if (activator != null) {
        bindings[activator] = action.invoke;
      }
    }
    return Semantics(
      customSemanticsActions: customSemanticActions,
      child: MenuAnchor(
        menuChildren: menuChildren,
        builder: (final builderContext, final controller, final __) =>
            CallbackShortcuts(
          bindings: bindings,
          child: builder(builderContext, controller),
        ),
      ),
    );
  }
}
