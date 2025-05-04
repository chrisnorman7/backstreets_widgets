import 'package:backstreets_widgets/icons.dart';
import 'package:flutter/material.dart';

/// A Button to create something new.
class NewButton extends StatelessWidget {
  /// Create an instance.
  const NewButton({
    required this.onPressed,
    this.tooltip = 'new',
    super.key,
  });

  /// The function to call when this button is pressed.
  final VoidCallback onPressed;

  /// The tooltip to use.
  final String tooltip;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => FloatingActionButton(
        onPressed: onPressed,
        tooltip: tooltip,
        child: addIcon,
      );
}
