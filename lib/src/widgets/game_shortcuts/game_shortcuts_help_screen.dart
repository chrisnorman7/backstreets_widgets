import 'package:flutter/material.dart';

import '../../screens/simple_scaffold.dart';
import '../cancel.dart';
import '../copy_list_tile.dart';
import 'game_shortcut.dart';

/// A widget which shows game shortcuts.
class GameShortcutsHelpScreen extends StatelessWidget {
  /// Create an instance.
  const GameShortcutsHelpScreen({
    required this.shortcuts,
    this.title = 'Keyboard Shortcuts',
    this.controlKey = 'CTRL',
    this.shiftKey = 'SHIFT',
    this.altKey = 'ALT',
    this.keyJoin = ' + ',
    this.textStyle,
    super.key,
  });

  /// The shortcuts to show.
  final List<GameShortcut> shortcuts;

  /// The title of the resulting screen.
  final String title;

  /// The name of the control key.
  final String controlKey;

  /// The title of the shift key.
  final String shiftKey;

  /// The title of the alt key.
  final String altKey;

  /// The string which joins keys.
  final String keyJoin;

  /// The text style to use.
  final TextStyle? textStyle;

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
                if (shortcut.shiftKey) shiftKey,
                if (shortcut.altKey) altKey,
                shortcut.shortcut.name,
              ];
              return CopyListTile(
                title: shortcut.title,
                subtitle: keys.join(keyJoin),
                textStyle: textStyle,
              );
            },
            itemCount: shortcuts.length,
            shrinkWrap: true,
          ),
        ),
      );
}
