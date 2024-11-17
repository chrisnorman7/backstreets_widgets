import 'package:flutter/material.dart';

import 'performable_action.dart';
import 'performable_actions_builder.dart';

/// A widget which uses [PerformableActionsBuilder] to produce a [Row] with a
/// menu [IconButton] to the right of [child].
class PerformableActions extends StatelessWidget {
  /// Create an instance.
  const PerformableActions({
    required this.actions,
    required this.child,
    super.key,
  });

  /// The actions to use.
  final List<PerformableAction> actions;

  /// The widget below this widget in the tree.
  final Widget child;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final actionNames = actions.map((final action) => action.name).toList();
    return PerformableActionsBuilder(
      actions: actions,
      builder: (final builderContext, final controller) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          child,
          FocusScope(
            canRequestFocus: false,
            debugLabel: 'More options for actions [$actionNames].',
            child: IconButton(
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              icon: const Icon(Icons.more_vert),
              tooltip: 'Show / hide menu',
            ),
          ),
        ],
      ),
    );
  }
}
