import 'package:flutter/material.dart';

import '../../../widgets.dart';

/// A widget which uses [PerformableActionsBuilder] to produce a [Row] with a
/// menu [IconButton] to the right of [child].
///
/// The result of [buttonBuilder] will be removed from the tab order by a
/// [FocusScope] widget.
class PerformableActions extends StatelessWidget {
  /// Create an instance.
  const PerformableActions({
    required this.actions,
    required this.child,
    this.buttonBuilder = defaultButtonBuilder,
    super.key,
  });

  /// The actions to use.
  final List<PerformableAction> actions;

  /// The widget below this widget in the tree.
  final Widget child;

  /// The function to call to build the menu button.
  final Widget Function(BuildContext builderContext, MenuController controller)
      buttonBuilder;

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
            child: buttonBuilder(builderContext, controller),
          ),
        ],
      ),
    );
  }
}
