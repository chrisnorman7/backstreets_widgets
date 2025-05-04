import 'package:backstreets_widgets/screens.dart';
import 'package:backstreets_widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A widget which shows game shortcuts.
class GameShortcutsHelpScreen extends StatelessWidget {
  /// Create an instance.
  const GameShortcutsHelpScreen({
    required this.shortcuts,
    this.title = 'Keyboard Shortcuts',
    this.controlKey = 'CTRL',
    this.metaKey = 'META',
    this.shiftKey = 'SHIFT',
    this.altKey = 'ALT',
    this.keyJoin = ' + ',
    super.key,
  });

  /// The shortcuts to show.
  final List<GameShortcut> shortcuts;

  /// The title of the resulting screen.
  final String title;

  /// The name of the control key.
  final String controlKey;

  /// The title of the meta key.
  final String metaKey;

  /// The title of the shift key.
  final String shiftKey;

  /// The title of the alt key.
  final String altKey;

  /// The string which joins keys.
  final String keyJoin;

  /// Build the widget.
  @override
  Widget build(final BuildContext context) => Cancel(
        child: SimpleScaffold(
          title: title,
          body: ListView.builder(
            itemBuilder: (final context, final index) {
              final shortcut = shortcuts[index];
              final keys = <String>[
                if (shortcut.controlKey) controlKey,
                if (shortcut.metaKey) metaKey,
                if (shortcut.shiftKey) shiftKey,
                if (shortcut.altKey) altKey,
                shortcut.shortcut.name,
              ];
              return CopyListTile(
                autofocus: index == 0,
                title: shortcut.title,
                subtitle: keys.join(keyJoin),
              );
            },
            itemCount: shortcuts.length,
            shrinkWrap: true,
          ),
        ),
      );
}
