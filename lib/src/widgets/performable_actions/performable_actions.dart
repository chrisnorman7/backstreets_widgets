import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

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
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.spacing = 0.0,
    this.verticalDirection = VerticalDirection.down,
    this.controller,
    this.closeMenuOnEscape = true,
    super.key,
  });

  /// The actions to use.
  final List<PerformableAction> actions;

  /// The widget below this widget in the tree.
  final Widget child;

  /// The function to call to build the menu button.
  final Widget Function(BuildContext builderContext, MenuController controller)
  buttonBuilder;

  /// The cross axis alignment to apply to the resulting [Row].
  final CrossAxisAlignment crossAxisAlignment;

  /// The main axis alignment to pass to the resulting [Row].
  final MainAxisAlignment mainAxisAlignment;

  /// The main axis size to apply to the resulting [Row].
  final MainAxisSize mainAxisSize;

  /// The spacing to apply to the resulting [Row].
  final double spacing;

  /// The vertical direction to apply to the resulting [Row].
  final VerticalDirection verticalDirection;

  /// The [MenuController] to pass to [MenuAnchor].
  final MenuController? controller;

  /// Whether the escape key should close the menu or not.
  final bool closeMenuOnEscape;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    final actionNames = actions.map((final action) => action.name).toList();
    return PerformableActionsBuilder(
      actions: actions,
      builder: (final builderContext, final controller) => Row(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        spacing: spacing,
        verticalDirection: verticalDirection,
        children: [
          child,
          FocusScope(
            canRequestFocus: false,
            debugLabel: 'More options for actions [$actionNames].',
            child: buttonBuilder(builderContext, controller),
          ),
        ],
      ),
      controller: controller,
      closeMenuOnEscape: closeMenuOnEscape,
    );
  }
}
