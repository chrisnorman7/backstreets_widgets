import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// A context for a [PerformableActionsBuilder].
class PerformableActionsContext {
  /// Create an instance.
  const PerformableActionsContext({
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
    var autofocused = false;
    for (final action in actions) {
      final invoke = action.invoke;
      final activator = action.activator;
      if (invoke != null) {
        customSemanticActions[CustomSemanticsAction(label: action.name)] =
            invoke;
        if (activator != null) {
          bindings[activator] = invoke;
        }
      } else {
        assert(
          action.activator == null,
          // ignore: lines_longer_than_80_chars
          'The action "${action.name}" is acting as a label (`onActivate == null`). As such, it cannot have a shortcut: ${action.activator}.',
        );
      }
      final autofocus = invoke != null && !autofocused;
      menuChildren.add(
        PerformableActionMenuItem(action: action, autofocus: autofocus),
      );
      if (autofocus) {
        autofocused = true;
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
