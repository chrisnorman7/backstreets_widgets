import 'package:flutter/material.dart';

/// A button which moves to the next page.
class NextButton extends StatelessWidget {
  /// Constructor for NextPageButton, takes a required onPressed callback.
  const NextButton({
    required this.onPressed,
    this.tooltip = 'Next',
    super.key,
  });

  /// Callback function that triggers when the button is pressed.
  final VoidCallback onPressed;

  /// The tooltip to show.
  final String tooltip;
  @override
  Widget build(final BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_forward),
        tooltip: tooltip,
        onPressed: onPressed,
      );
}
