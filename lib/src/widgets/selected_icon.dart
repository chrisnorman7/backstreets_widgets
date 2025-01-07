import 'package:flutter/material.dart';

/// An icon which changes depending on [selected].
class SelectedIcon extends StatelessWidget {
  /// Create an instance.
  const SelectedIcon({
    required this.selected,
    super.key,
    this.selectedIcon = const Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    this.unselectedIcon = const Icon(
      Icons.circle_outlined,
      color: Colors.grey,
    ),
  });

  /// Whether or not [selectedIcon] or [unselectedIcon] should be returned.
  final bool selected;

  /// The widget to return if [selected] is `true`.
  final Widget selectedIcon;

  /// The widget to return if [selected] is `false`.
  final Widget unselectedIcon;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) {
    if (selected) {
      return selectedIcon;
    }
    return unselectedIcon;
  }
}
