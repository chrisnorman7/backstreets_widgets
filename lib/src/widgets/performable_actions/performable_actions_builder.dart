import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

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
    final actionsContext = PerformableActionsContext.fromActions(actions);
    return Semantics(
      customSemanticsActions: actionsContext.customSemanticActions,
      child: MenuAnchor(
        menuChildren: actionsContext.menuChildren,
        builder: (final builderContext, final controller, final __) =>
            CallbackShortcuts(
          bindings: actionsContext.bindings,
          child: builder(builderContext, controller),
        ),
      ),
    );
  }
}
