import 'package:flutter/material.dart';

import '../../../icons.dart';

/// A save button.
class SaveButton extends StatelessWidget {
  /// Create an instance.
  const SaveButton({
    required this.onPressed,
    this.tooltip = 'Save',
    super.key,
  });

  /// The function to call when this button is pressed.
  final VoidCallback onPressed;

  /// The tooltip to use.
  final String tooltip;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: saveIcon,
        iconSize: 32.0,
        tooltip: tooltip,
      );
}
