import 'package:flutter/material.dart';

/// A widget that shows [text] in the centre of the screen.
class CenterText extends StatelessWidget {
  /// Create an instance.
  const CenterText({
    required this.text,
    this.autofocus = false,
    super.key,
  });

  /// The text to show.
  final String text;

  /// Whether the resulting [Focus] should be autofocused.
  final bool autofocus;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Focus(
        autofocus: autofocus,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
            ],
          ),
        ),
      );
}
