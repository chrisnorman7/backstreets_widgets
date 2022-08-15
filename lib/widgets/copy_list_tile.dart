import 'package:flutter/material.dart';

import '../util.dart';

/// A list tile which can be copied with a cap.
class CopyListTile extends StatelessWidget {
  /// Create an instance.
  const CopyListTile({
    required this.title,
    required this.subtitle,
    this.autofocus = false,
    super.key,
  });

  /// The title of this widget.
  final String title;

  /// The subtitle of this widget.
  final String subtitle;

  /// Whether to autofocus this widget.
  final bool autofocus;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => ListTile(
        autofocus: autofocus,
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () => setClipboardText('$title: $subtitle'),
      );
}
