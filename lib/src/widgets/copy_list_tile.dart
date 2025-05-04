import 'package:backstreets_widgets/extensions.dart';
import 'package:backstreets_widgets/shortcuts.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A list tile which can be copied with a tap.
class CopyListTile extends StatelessWidget {
  /// Create an instance.
  const CopyListTile({
    required this.title,
    required this.subtitle,
    this.autofocus = false,
    this.onLongPress,
    super.key,
  });

  /// The title of this widget.
  final String title;

  /// The subtitle of this widget.
  final String subtitle;

  /// Whether to autofocus this widget.
  final bool autofocus;

  /// What to do when long pressing the [ListTile].
  final GestureLongPressCallback? onLongPress;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => PerformableActionsListTile(
        actions: [
          PerformableAction(
            name: 'Copy value',
            activator: copyShortcut,
            invoke: subtitle.copyToClipboard,
          ),
          PerformableAction(
            name: 'Copy title',
            activator: copyOtherShortcut,
            invoke: title.copyToClipboard,
          ),
        ],
        autofocus: autofocus,
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () => '$title: $subtitle'.copyToClipboard(),
        onLongPress: onLongPress,
      );
}
