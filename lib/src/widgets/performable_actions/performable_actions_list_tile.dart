import 'package:flutter/material.dart';

import '../../../extensions.dart';
import 'performable_action.dart';
import 'performable_actions_builder.dart';

/// The default button builder for [PerformableActionsListTile].
Widget defaultButtonBuilder(
  final BuildContext builderContext,
  final MenuController controller,
) =>
    IconButton(
      onPressed: controller.toggle,
      icon: const Icon(Icons.more_vert),
      tooltip: 'Show / hide menu',
    );

/// A [ListTile] which wraps [PerformableActionsBuilder].
class PerformableActionsListTile extends StatelessWidget {
  /// Create an instance.
  const PerformableActionsListTile({
    required this.actions,
    this.title,
    this.subtitle,
    this.onTap,
    this.buttonBuilder = defaultButtonBuilder,
    this.onLongPress,
    this.autofocus = false,
    this.selected = false,
    super.key,
  });

  /// The actions to use.
  final List<PerformableAction> actions;

  /// The title of the [ListTile].
  final Widget? title;

  /// The subtitle of the [ListTile].
  final Widget? subtitle;

  /// The function to call when the [ListTile] is tapped.
  final VoidCallback? onTap;

  /// What to do when long pressing the [ListTile].
  final GestureLongPressCallback? onLongPress;

  /// Whether the [ListTile] should be autofocused.
  final bool autofocus;

  /// Whether the [ListTile] should be selected.
  final bool selected;

  /// The function to call to build the `trailing` [Widget] for the [ListTile].
  final Widget Function(BuildContext context, MenuController controller)
      buttonBuilder;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => PerformableActionsBuilder(
        actions: actions,
        builder: (final builderContext, final controller) => ListTile(
          autofocus: autofocus,
          selected: selected,
          title: title,
          subtitle: subtitle,
          onTap: onTap,
          onLongPress: onLongPress,
          trailing: buttonBuilder(builderContext, controller),
        ),
      );
}
