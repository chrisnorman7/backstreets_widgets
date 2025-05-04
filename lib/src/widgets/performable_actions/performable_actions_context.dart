import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// A context for a [PerformableActionsBuilder].
class PerformableActionsContext {
  /// Create an instance.
  PerformableActionsContext({
    required this.actions,
    required this.customSemanticActions,
    required this.menuChildren,
    required this.bindings,
  });

  /// Create an instance from an [actions] list.
  factory PerformableActionsContext.fromActions(
    final List<PerformableAction> actions,
  ) {
    final customSemanticActions = <CustomSemanticsAction, VoidCallback>{};
    final menuChildren = <Widget>[];
    final bindings = <ShortcutActivator, VoidCallback>{};
    for (var i = 0; i < actions.length; i++) {
      final action = actions[i];
      final invoke = action.invoke;
      final activator = action.activator;
      customSemanticActions[CustomSemanticsAction(label: action.name)] = invoke;
      menuChildren.add(
        PerformableActionMenuItem(
          action: action,
          autofocus: i == 0,
        ),
      );
      if (activator != null) {
        bindings[activator] = action.invoke;
      }
    }
    return PerformableActionsContext(
      actions: actions,
      customSemanticActions: customSemanticActions,
      menuChildren: menuChildren,
      bindings: bindings,
    );
  }

  /// The actions for this context.
  final List<PerformableAction> actions;

  /// The custom semantics actions which have been built from [actions].
  final Map<CustomSemanticsAction, VoidCallback> customSemanticActions;

  /// The menu items which have been built from [actions].
  final List<Widget> menuChildren;

  /// A [Map] which can be fed to [CallbackShortcuts] to provide shortcuts for a
  /// [Widget].
  final Map<ShortcutActivator, VoidCallback> bindings;
}
